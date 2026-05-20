# UDS Package Values Guidelines

When implementing UDS Packages, it is important to consider how [Zarf Values](https://docs.zarf.dev/ref/examples/values-templating/) will be exposed from the package and what the implications are for downstream consumers.  UDS Packages are expected to be deployed in a variety of environments, and the values exposed through to Helm charts should be flexible enough to accommodate different deployment scenarios while also being secure and easy to use.

This means that for any given UDS Package most of the values from the underlying Helm chart should be exposed as Zarf Values with only values that would inherently break the UDS Package (i.e. `image` references, or `ingress` configurations) or compromise the security of the package (i.e. `podSecurityContext`) being restricted.

## Implementation

The top-level `values` key for a UDS Package should be defined in the parent `zarf.yaml` of the UDS Package repository and should reference a `zarf-default-values.yaml` file and a `zarf-default-values.schema.json` file located in the root of the repository to handle defaults and validation respectively.

The schema file should follow the [JSON Schema](https://json-schema.org/) specification and should be best effort to validate the common values that a consumer of the UDS Package would reasonably expect to have configured.  For deeply nested values the UDS Package should seek to keep the schema simple and avoid over-complicating it as this could cause unexpected breakages as the underlying Helm chart or Kubernetes API changes.

The `values` mappings (`source` and `target`) to Helm charts should be added alongside the initial Helm chart definition (i.e. in the `common/zarf.yaml` file).  These should be kept as flat as possible, exposing the highest order node in the values tree that makes sense for the package.  Given most UDS Packages are single-component, the top level mapping should be the chart's name and should exclude the component name for simplicity (if a multi-component package needs it component name can be added as necessary).

## Example

The following is an example of a UDS Package `common/zarf.yaml` file that exposes the values for the `uds-nginx-config` and `nginx` charts. It includes all of the configuration options from the `uds-nginx-config` chart as that chart is intentionally designed to expose UDS-specific configuration options.  For the `nginx` chart, it includes most of the top-level keys, but excludes the `image`, `imagePullSecrets`, `podSecurityContext`, `securityContext`, `ingress`, `livenessProbe`, and `readinessProbe` keys.

```yaml
kind: ZarfPackageConfig
metadata:
  name: nginx
  description: UDS Common Nginx Example

components:
  - name: nginx
    required: true
    charts:
      - name: uds-nginx-config
        namespace: nginx
        version: 0.1.0
        localPath: ../chart
        values:
          - sourcePath: .uds-nginx-config
            targetPath: .
      - name: nginx
        version: 0.1.0
        namespace: nginx
        localPath: ../src/nginx
        valuesFiles:
          - ../values/common-values.yaml
        values:
          - sourcePath: .nginx.replicaCount
            targetPath: replicaCount
          - sourcePath: .nginx.nameOverride
            targetPath: nameOverride
          - sourcePath: .nginx.fullnameOverride
            targetPath: fullnameOverride
          - sourcePath: .nginx.serviceAccount
            targetPath: serviceAccount
          - sourcePath: .nginx.podAnnotations
            targetPath: podAnnotations
          - sourcePath: .nginx.podLabels
            targetPath: podLabels
          - sourcePath: .nginx.service
            targetPath: service
          - sourcePath: .nginx.resources
            targetPath: resources
          - sourcePath: .nginx.autoscaling
            targetPath: autoscaling
          - sourcePath: .nginx.volumes
            targetPath: volumes
          - sourcePath: .nginx.volumeMounts
            targetPath: volumeMounts
          - sourcePath: .nginx.nodeSelector
            targetPath: nodeSelector
          - sourcePath: .nginx.tolerations
            targetPath: tolerations
          - sourcePath: .nginx.affinity
            targetPath: affinity
```

Within the root `zarf.yaml` the top-level `values` key maps to a `zarf-default-values.yaml` file that contains the default values for the package and a `zarf-dev-values.schema.json` file that contains the schema for those values.  The schema has specific types for common options (i.e. `replicaCount`), but looser schema for other options (i.e. `affinity`, `tolerations`, `nodeSelector`, etc.) to reduce the complexity of the schema and make it easier to understand and maintain.

```yaml
uds-nginx-config:
  domain: uds.dev

nginx:
  replicaCount: 1
  nameOverride: ""
  fullnameOverride: ""
  serviceAccount:
    create: true
    automount: true
    annotations: {}
    name: ""
  podAnnotations: {}
  podLabels: {}
  service:
    type: ClusterIP
    port: 8080
  resources: {}
  autoscaling:
    enabled: false
    minReplicas: 1
    maxReplicas: 100
    targetCPUUtilizationPercentage: 80
  volumes: []
  volumeMounts: []
  nodeSelector: {}
  tolerations: []
  affinity: {}
```

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "type": "object",
  "additionalProperties": false,
  "properties": {
    "uds-nginx-config": {
      "type": "object",
      "additionalProperties": false,
      "properties": {
        "domain": {
          "type": "string"
        }
      }
    },
    "nginx": {
      "type": "object",
      "additionalProperties": false,
      "properties": {
        "replicaCount": {
          "type": "integer",
          "minimum": 0
        },
        "nameOverride": {
          "type": "string"
        },
        "fullnameOverride": {
          "type": "string"
        },
        "serviceAccount": {
          "type": "object",
          "additionalProperties": false,
          "properties": {
            "create": {
              "type": "boolean"
            },
            "automount": {
              "type": "boolean"
            },
            "annotations": {
              "type": "object",
              "additionalProperties": {
                "type": "string"
              }
            },
            "name": {
              "type": "string"
            }
          }
        },
        "podAnnotations": {
          "type": "object",
          "additionalProperties": {
            "type": "string"
          }
        },
        "podLabels": {
          "type": "object",
          "additionalProperties": {
            "type": "string"
          }
        },
        "service": {
          "type": "object",
          "additionalProperties": false,
          "properties": {
            "type": {
              "type": "string"
            },
            "port": {
              "type": "integer",
              "minimum": 1,
              "maximum": 65535
            }
          }
        },
        "resources": {
          "type": "object"
        },
        "autoscaling": {
          "type": "object",
          "additionalProperties": false,
          "properties": {
            "enabled": {
              "type": "boolean"
            },
            "minReplicas": {
              "type": "integer",
              "minimum": 1
            },
            "maxReplicas": {
              "type": "integer",
              "minimum": 1
            },
            "targetCPUUtilizationPercentage": {
              "type": "integer",
              "minimum": 1,
              "maximum": 100
            }
          }
        },
        "volumes": {
          "type": "array",
          "items": {
            "type": "object"
          }
        },
        "volumeMounts": {
          "type": "array",
          "items": {
            "type": "object"
          }
        },
        "nodeSelector": {
          "type": "object",
          "additionalProperties": {
            "type": "string"
          }
        },
        "tolerations": {
          "type": "array",
          "items": {
            "type": "object"
          }
        },
        "affinity": {
          "type": "object"
        }
      }
    }
  }
}
```
