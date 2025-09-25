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
| `dev.uds.title` | The human readable title for the package | `"GitLab Runner"` | [UDS Registry](https://github.com/defenseunicorns/uds-registry/blob/main/docs/development/development.md#zarf-package-metadata) |
| `dev.uds.categories` | A list of dynamic categories the package belongs to | `"Software Dev, IT Management, Kubernetes (K8s), Productivity"` | [UDS Registry](https://github.com/defenseunicorns/uds-registry/blob/main/docs/development/development.md#zarf-package-metadata) |
| `dev.uds.keywords` | A list of search keywords associated with the package | `"CI/CD Pipelines, Automation, GitLab Integration"` | [UDS Registry](https://github.com/defenseunicorns/uds-registry/blob/main/docs/development/development.md#zarf-package-metadata) |
| `dev.uds.tagline` | A tagline for the package | `"Open Source CI/CD Job Execution Tool"` | [UDS Registry](https://github.com/defenseunicorns/uds-registry/blob/main/docs/development/development.md#zarf-package-metadata) |
| `dev.uds.icon` | A base64 encoded icon for the package represented as a [data URI](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URIs) | `"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="` | [UDS Registry](https://github.com/defenseunicorns/uds-registry/blob/main/docs/development/development.md#zarf-package-metadata) |

> [!IMPORTANT]
> Consider how these annotations impact user experience when your package appears in the UDS Registry. Keep information concise and descriptive, and optimize icons for both size and quality.

## Provisional Annotations

Below are annotations that are experimental and not ready for broader use (yet). You may still implement these however and feedback is appreciated.

| Annotation | Description | Example | Products |
| --- | --- | --- | --- |
| `dev.uds.system` | Whether the package is a system package or an application package | `"true"` | [UDS Android](https://github.com/defenseunicorns/uds-android) |
| `dev.uds.time.deploy.estimate` | An estimate of the time it will take to deploy the package represented as a [Go duration](https://pkg.go.dev/time#ParseDuration) | `"15m"` | [UDS Android](https://github.com/defenseunicorns/uds-android) |
