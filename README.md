# gha-php-stan

## Description
Run PHP STAN with custom PHP image.

## Inputs
| Key                   | Required | Default                        | Description                                                                                    |
|-----------------------|----------|--------------------------------|------------------------------------------------------------------------------------------------|
| **php-image**         | **true** | `''`                           | PHP image to use (fully qualified image address. ex: quay.io/adoreme/nginx-fpm-alpine:v0.0.1). |
| **report-path**       | **true** | `./build/reports/php-stan.xml` | Report file path (where stan results will be saved).                                           |

## Outputs
**N/A**

## Notes
ℹ This action doesn't handle docker registry authentication (e.g. for private images).
You can run [docker/login-action@v1](https://github.com/docker/login-action) before this step.

ℹ It uses [pmd-github-action](https://github.com/jwgmeligmeyling/pmd-github-action) for publishing **MD** results.

### Example of step configuration and usage:

```yaml
steps:
  - name: 'Run STAN'
    uses: adore-me/gha-php-stan@master
```
