# Application Metadata

When a uds-package [achieves a badge](../requirements/uds-package-requirements.md), it is eligible for inclusion and publishing on the [Airgap Store](https://apps.defenseunicorns.com/catalog).

## Zarf Annotations

UDS packages should use Zarf Annotations to provide metadata that will be displayed in the Airgap Store. These annotations are defined in the `zarf.yaml` file of your package.

### Required Annotations

The following annotations are required for UDS packages:

- `dev.uds.title`: The display name of your application
- `dev.uds.tagline`: A short description of your application (1-2 sentences)
- `dev.uds.categories`: Comma-separated list of categories that your application falls under
- `dev.uds.keywords`: Comma-separated list of keywords related to your application
- `dev.uds.icon`: A data URI of your application's icon (see [convert-image.js](convert-image.js) for help)

### Example

```yaml
annotations:
  dev.uds.title: UDS Registry
  dev.uds.tagline: OCI Registry with advanced security scanning features
  dev.uds.categories: Registry, Security, Container
  dev.uds.keywords: OCI, Registry, Container, Security, Scanning, Mission-Critical, Deployment, UDS
  dev.uds.icon: data:image/svg;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8/x8AAwMCAO+ip1sAAAAASUVORK5CYII=
```

#### Converting an Image

You can use the [convert-image.js](convert-image.js) script to convert an image to a data URI.

```bash
cd convert-image
npm install
node convert-image.js retro-arcade.svg -o logo-uri.txt
node convert-image.js --help
```

- You may encounter issues with the rendered svg, you can use `-r, --raw-only` to skip minification
- You may find [vecta.io](https://vecta.io/nano?utm_source=vectaio&utm_content=nano-logo&utm_campaign=vecta-nano) helpful as an alternative to minify the svg