# Application Metadata

When a UDS Package [meets the requirements](../requirements/uds-package-requirements.md), it is eligible for inclusion and publishing on the [UDS Registry](https://registry.defenseunicorns.com/).

Packages listed on the Registry contain metadata that provides additional information about the package. This metadata enhances discoverability, improves user experience, and provides crucial information about package functionality. [zarf-dev/zarf#2976](https://github.com/zarf-dev/zarf/issues/2976) introduced annotations as the mechanism to provide this metadata.

> [!NOTE]
> Annotations are added to your `zarf.yaml` under the `metadata.annotations` key:
> ```yaml
> kind: ZarfPackageConfig
> metadata:
>   annotations:
>     dev.uds.title: "Example Package"
>     dev.uds.categories: "Development, Testing"
>     # Additional annotations as needed
> ```

## Production Ready Annotations

The following annotations are production ready and you are encouraged to use them widely in your packages:

| Annotation | Description | Example | Products |
| --- | --- | --- | --- |
| `dev.uds.title` | The human readable title for the package | `"GitLab Runner"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.categories` | A list of dynamic categories the package belongs to | `"Software Dev, Kubernetes (K8s)"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.keywords` | A list of search keywords associated with the package | `"CI/CD Pipelines, Automation, GitLab"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.tagline` | A tagline for the package | `"Open Source CI/CD Job Execution Tool"` | [UDS Registry](https://registry.defenseunicorns.com/) |
| `dev.uds.icon` | A base64 encoded icon for the package represented as a [data URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) | `"data:image/png;base64,iVBORw0KGgo..."` | [UDS Registry](https://registry.defenseunicorns.com/) |

> [!IMPORTANT]
> Consider how these annotations impact user experience when your package appears in the UDS Registry. Keep information concise and descriptive, and optimize icons for both size and quality.

## Provisional Annotations

Below are annotations that are experimental and not ready for broader use (yet). You may still implement these however and feedback is appreciated.

| Annotation | Description | Example | Products |
| --- | --- | --- | --- |
| `dev.uds.system` | Whether the package is a system package (i.e. operating system or firmware) or an application package | `"true"` | [UDS Android](https://uds.defenseunicorns.com/tactical-edge-deployments/technical-features/#uds-tactical-edge-technical-features) |
