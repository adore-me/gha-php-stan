# gha-php-stan

## Description
Run PHP STAN with custom PHP image.

## Inputs
<<<<<<< Updated upstream
| Key                   | Required | Default                        | Description                                                                                    |
|-----------------------|----------|--------------------------------|------------------------------------------------------------------------------------------------|
| **php-image**         | **true** | `''`                           | PHP image to use (fully qualified image address. ex: quay.io/adoreme/nginx-fpm-alpine:v0.0.1). |
| **report-path**       | **true** | `./build/reports/php-stan.xml` | Report file path (where stan results will be saved).                                           |
=======
| Key                  | Required | Default         | Description                                                                                    |
|----------------------|----------|-----------------|------------------------------------------------------------------------------------------------|
| **php-image**        | **true** | `N/A`           | PHP image to use (fully qualified image address. ex: quay.io/adoreme/nginx-fpm-alpine:v0.0.1). |
| **report-dir**       | **true** | `build/reports` | Report directory (no trailing `/`).                                                            |
| **report-file-name** | **true** | `php-stan.xml`  | Report file name.                                                                              |
>>>>>>> Stashed changes

## Outputs
**N/A**

## Notes
ℹ This action doesn't handle docker registry authentication (e.g. for private images).
You can run [docker/login-action@v1](https://github.com/docker/login-action) before this step.

ℹ It uses [pmd-github-action](https://github.com/jwgmeligmeyling/pmd-github-action) for publishing **MD** results.

### Example of step configuration and usage:

```yaml
steps:
<<<<<<< Updated upstream
  - name: 'Run STAN'
=======
  - name: 'Run PHP STAN'
>>>>>>> Stashed changes
    uses: adore-me/gha-php-stan@master
```
