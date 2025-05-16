// Copyright 2024 Defense Unicorns
// SPDX-License-Identifier: AGPL-3.0-or-later OR LicenseRef-Defense-Unicorns-Commercial

const fs = require('fs');
const https = require('https');
const { program } = require('commander');
const sharp = require('sharp');

/**
 * Enhanced SVG minifier that implements techniques from Vecta.io/nano.
 * - Removes metadata, comments, and unnecessary attributes
 * - Optimizes path data (precision, relative commands)
 * - Collapses whitespace and optimizes coordinate syntax
 * - Shortens color values and removes defaults
 * @param {string} svgString - The SVG content to minify
 * @returns {Promise<string>} - The minified SVG string
 */
async function minifySvg(svgString) {
  // Basic cleanup (whitespace, comments, metadata)
  let svg = svgString
    .replace(/<\?xml.*?\?>/g, '') // Remove XML declaration
    .replace(/<!--.*?-->/gs, '') // Remove comments
    .replace(/[\n\r\t]+/g, ' ') // Remove newlines, tabs and carriage returns
    .replace(/<!DOCTYPE.*?>/g, '') // Remove DOCTYPE
    .replace(/>\s+</g, '><') // Remove whitespace between tags
    .replace(/\s+([a-zA-Z-]+)=""/g, '') // Remove empty attributes
    .replace(/\s{2,}/g, ' ') // Collapse multiple spaces
    .replace(/ id="[^"]*"/g, '') // Remove id attributes
    .replace(/ version="[^"]*"/g, '') // Remove version attributes
    
    // Remove unnecessary attributes with default values
    .replace(/fill="none"/g, '') // Remove unnecessary fill="none"
    .replace(/stroke="none"/g, '') // Remove unnecessary stroke="none"
    .replace(/ fill-opacity="1"/g, '') // Remove default fill-opacity
    .replace(/ stroke-opacity="1"/g, '') // Remove default stroke-opacity
    .replace(/ stroke-width="1"/g, '') // Remove default stroke-width
    .replace(/\s+style="[^"]*"/g, '') // Remove empty style attributes
    
    // Path data optimization: precision, scientific notation, decimals
    .replace(/([\d.]+)0+([\s,])/g, '$1$2') // Remove trailing zeros in numbers
    .replace(/([\d.])+e-\d+/g, '0') // Convert scientific notation to 0
    .replace(/(\s|,)-0\./g, '$1-.') // Optimize negative decimals
    .replace(/([\d])\.0+(\D)/g, '$1$2') // Remove unnecessary decimals
    
    // Optimizing coordinate spaces and paths
    .replace(/([\d.]+)\s+([\d.]+)/g, '$1,$2') // Convert space-separated numbers to comma-separated
    .replace(/(\d)\.(\d{1,3})\d*/g, (match, p1, p2) => {
      // Reduce precision to 3 decimal places
      return `${p1}.${p2}`;
    })
    
    // Optimize path commands: convert absolute to relative where shorter
    .replace(/([Mm])\s*([\d.-]+)[\s,]+([\d.-]+)\s*([HhVvLlZz])/g, (match, cmd, x, y, next) => {
      if (cmd === 'M' && next.toLowerCase() === 'z' && x.length + y.length < 10) {
        // Convert to relative for simple shapes when it saves space
        return `m${x},${y}${next.toLowerCase()}`;
      }
      return `${cmd}${x},${y}${next}`;
    })
    
    // Optimize SVG colors
    .replace(/="#000000"/g, '="#000"') // Shorten black
    .replace(/="#FFFFFF"/g, '="#fff"') // Shorten white
    .replace(/="rgb\((\d+)[\s,]+(\d+)[\s,]+(\d+)\)"/g, (_, r, g, b) => {
      // Convert RGB to hex, using shorthand when possible
      const hex = `#${((1 << 24) + (+r << 16) + (+g << 8) + +b).toString(16).slice(1)}`;
      // Use shorthand hex if possible (e.g., #fff instead of #ffffff)
      if (hex[1] === hex[2] && hex[3] === hex[4] && hex[5] === hex[6]) {
        return `="#${hex[1]}${hex[3]}${hex[5]}"`;
      }
      return `="${hex}"`;
    })
    .trim();
  
  // Apply additional optimization for paths
  svg = svg.replace(/([\d.])(\s+)([,-])(\s+)(\d)/g, '$1$3$5'); // Remove spaces around operators
  
  // Set xmlns namespace more efficiently
  svg = svg.replace(/xmlns="http:\/\/www\.w3\.org\/2000\/svg"/g, 'xmlns="http://www.w3.org/2000/svg"');
  
  // Apply multiple passes for better results
  // (sometimes one optimization creates opportunities for others)
  for (let i = 0; i < 2; i++) {
    // Reapply critical optimizations for better results
    svg = svg.replace(/\s{2,}/g, ' ') // Collapse multiple spaces again
      .replace(/>\s+</g, '><') // Remove whitespace between tags again
      .trim();
  }
  
  return svg;
}

/**
 * Checks if a string is a URL
 */
function isUrl(str) {
  try {
    new URL(str);
    return true;
  } catch {
    return false;
  }
}

/**
 * Downloads content from a URL
 */
function downloadUrl(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      const chunks = [];
      res.on('data', chunk => chunks.push(chunk));
      res.on('end', () => resolve(Buffer.concat(chunks)));
      res.on('error', reject);
    }).on('error', reject);
  });
}

/**
 * Processes an image (SVG or PNG) and returns a data URI
 */
async function processImage(input, options = {}) {
  let buffer;
  let originalDataUri;
  
  // Get the content either from URL or file
  if (isUrl(input)) {
    buffer = await downloadUrl(input);
  } else {
    if (!fs.existsSync(input)) {
      throw new Error(`File not found: ${input}`);
    }
    buffer = fs.readFileSync(input);
  }

  // Detect if it's an SVG by checking the first few bytes
  const isSvg = buffer.toString('utf8', 0, 100).toLowerCase().includes('<svg');

  if (isSvg) {
    // For SVGs, minify and convert to data URI
    const svgString = buffer.toString('utf8');
    originalDataUri = `data:image/svg+xml;base64,${Buffer.from(svgString).toString('base64')}`;
    
    // Skip minification if raw-only option is enabled
    if (options.rawOnly) {
      return { dataUri: originalDataUri, originalDataUri };
    }
    
    const minified = await minifySvg(svgString);
    const base64 = Buffer.from(minified).toString('base64');
    return { dataUri: `data:image/svg+xml;base64,${base64}`, originalDataUri };
  } else {
    // For other images (like PNG), optimize using sharp and convert to data URI
    originalDataUri = `data:image/png;base64,${buffer.toString('base64')}`;
    
    // Skip optimization if raw-only option is enabled
    if (options.rawOnly) {
      return { dataUri: originalDataUri, originalDataUri };
    }
    
    const optimized = await sharp(buffer)
      .png({ quality: 90 })
      .toBuffer();
    
    return { dataUri: `data:image/png;base64,${optimized.toString('base64')}`, originalDataUri };
  }
}

// Set up command line interface
program
  .name('convert-image')
  .description('Convert images (SVG/PNG) to minified data URIs')
  .argument('<input>', 'Input file path or URL')
  .option('-s, --stdout', 'Output data URI to stdout only')
  .option('-p, --preview', 'Generate HTML preview (ignored if --stdout is used)')
  .option('-r, --raw-only', 'Skip optimization/minification and only create the data URI')
  .option('-o, --output <file>', 'Save data URI to specified file')
  .addHelpText('after', `
Examples:
  $ convert-image logo.svg                    # Process and display info in console
  $ convert-image logo.svg -p                 # Process and generate HTML preview
  $ convert-image logo.svg -s                 # Output only the data URI to stdout 
  $ convert-image logo.svg -o logo-uri.txt    # Save data URI to a file
  $ convert-image https://example.com/img.png # Process image from URL
`)
  .action(async (input, options) => {
    try {
      const { dataUri, originalDataUri } = await processImage(input, { rawOnly: options.rawOnly });
      
      if (options.stdout) {
        console.log(dataUri);
        return;
      }

      // Save to output file if specified
      if (options.output) {
        fs.writeFileSync(options.output, dataUri);
        console.log(`Data URI saved to: ${options.output}`);
      }

      // Print basic info
      const filename = isUrl(input) ? new URL(input).pathname.split('/').pop() : input;
      console.log(`Processed: ${filename}`);
      console.log(`Data URI length before minification: ${originalDataUri.length} characters`);
      console.log(`Data URI length after minification: ${dataUri.length} characters`);

      if (options.preview) {
        const html = `<!DOCTYPE html>
<html>
<head>
    <title>Image Preview - ${filename}</title>
    <style>
        body { 
          display: flex; 
          flex-direction: column; 
          align-items: center; 
          padding: 20px; 
          background-color: #111827; 
          color: #e5e7eb; 
        }
        h1 { font-family: sans-serif; color: #f9fafb; margin-bottom: 30px; }
        .comparison-container { display: flex; gap: 40px; }
        .image-container { text-align: center; }
        img { 
          width: 100px; 
          height: 100px; 
          object-fit: contain; 
          background-color: rgba(255, 255, 255, 0.1); 
          border-radius: 4px;
        }
        .label { margin-top: 10px; font-family: sans-serif; color: #9ca3af; }
    </style>
</head>
<body>
    <h1>${filename}</h1>
    <div class="comparison-container">
        <div class="image-container">
            <img src="${originalDataUri}" alt="Original">
            <div class="label">Original</div>
        </div>
        <div class="image-container">
            <img src="${dataUri}" alt="Optimized">
            <div class="label">${options.rawOnly ? 'Raw Data URI' : 'Optimized'}</div>
        </div>
    </div>
</body>
</html>`;

        fs.writeFileSync('view-image.html', html);
        console.log('\nPreview saved to view-image.html');
      }
    } catch (error) {
      console.error('Error:', error.message);
      process.exit(1);
    }
  });

program.parse();
