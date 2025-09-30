# Application Metadata

When a UDS Package [meets the requirements](../requirements/uds-package-requirements.md), it is eligible for inclusion and publishing on the [UDS Registry](https://registry.defenseunicorns.com/). Packages listed on the UDS Registry use metadata to enhance discoverability, improve user experience, and provide crucial information about package functionality. 

> [!NOTE]
> This document uses terminology defined in [RFC 2119](https://www.ietf.org/rfc/rfc2119.txt) to indicate requirement levels. Keywords like "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" are to be interpreted as described in the RFC.

You can add these annotations to your `zarf.yaml` under the `metadata.annotations` key (introduced in [zarf-dev/zarf#2976](https://github.com/zarf-dev/zarf/issues/2976)):

```yaml
kind: ZarfPackageConfig
metadata:
  annotations:
    dev.uds.title: "Example Package"
    dev.uds.categories: "Development, Testing"
    # Additional annotations as needed
```

## Production Ready Annotations

The following annotations are production ready and you are encouraged to use them widely in your packages:

| Annotation | Description | Example | Products |
| --- | --- | --- | --- |
| `dev.uds.title` | The human readable title for the package | `"GitLab Runner"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.categories` | A list of dynamic categories the package belongs to | `"Software Dev, Kubernetes (K8s)"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.keywords` | A list of search keywords associated with the package | `"CI/CD Pipelines, Automation, GitLab"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.tagline` | A tagline for the package | `"Open Source CI/CD Job Execution Tool"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.icon` | A base64 encoded icon for the package represented as a [data URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) | `"data:image/png;base64,iVBORw0KGgo..."` | [UDS Registry](https://registry.defenseunicorns.com/) |

### Implementation Guidelines

Implement each of the above annotations according to these specific guidelines:

#### `dev.uds.title`

- **MUST** be a human-readable title case string that clearly identifies the package
- **SHOULD** match the official product name when packaging existing software

#### `dev.uds.categories`

- **MUST** be provided as a comma-with-space-separated string ("Category One, Category Two")
- **SHOULD** include 1-3 categories from the standard options:

<ul>
<details>
<summary>Standard Categories</summary>

  - AI
  - Cloud Native
  - Collaboration
  - Command And Control
  - Cybersecurity
  - Data Engineering
  - Databases
  - Digital Engineering
  - IT Management
  - Infrastructure
  - Kubernetes (K8s)
  - Load Balancing
  - Networking
  - Observability
  - Operator
  - Pipelines
  - Productivity
  - Security
  - Software Dev
  - Web
</details>
</ul>

- **MAY** include new categories when existing categories don't adequately describe the package

#### `dev.uds.keywords`

- **MUST** be provided as a comma-with-space-separated string of 3-7 relevant search terms
- **SHOULD** include common alternative terms or abbreviations users might use to search for the package

#### `dev.uds.tagline`

- **MUST** be a single, concise sentence (recommended 5-10 words) that clearly describes the package's function

#### `dev.uds.icon`

- **MUST** be encoded as a base64 [data URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs)
- **SHOULD** be either `.png` or `.svg` format (`.svg` RECOMMENDED) square image with a transparent background
- **RECOMMENDED** image size is `200x200px` to optimize both data size and image quality

> [!TIP]
> Consider how these annotations impact user experience when your package appears in the UDS Registry. Keep information concise and descriptive, and think about how everything will be displayed within the views.

## Provisional Annotations

The following annotations are experimental and not yet ready for broader use. You may implement them and provide feedback to help improve them.

| Annotation | Description | Example | Products |
| --- | --- | --- | --- |
| `dev.uds.system` | Whether the package is a system package (i.e. operating system or firmware) or an application package | `"true"` | [UDS Android](https://uds.defenseunicorns.com/tactical-edge-deployments/technical-features/#uds-tactical-edge-technical-features) |
