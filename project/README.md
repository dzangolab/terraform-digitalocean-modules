# DigitalOcean Floating IP module

This module provisions a DigitalOcean project.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name                                                                               | Version   |
| ---------------------------------------------------------------------------------- | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform)          | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 1.22.2 |

## Providers

| Name                                                                         | Version   |
| ---------------------------------------------------------------------------- | --------- |
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 1.22.2 |

## Modules

No modules.

## Resources

| Name                                                                                                                         | Type     |
| ---------------------------------------------------------------------------------------------------------------------------- | -------- |
| [digitalocean_project.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) | resource |

## Inputs

| Name                                                                                       | Description                                                                                                                                | Type           | Default | Required |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------ | -------------- | ------- | :------: |
| <a name="input_description"></a> [description](#input\_description)                        | The description of the project                                                                                                             | `string`       | `null`  |    no    |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token                                                                                                                        | `string`       | n/a     |   yes    |
| <a name="input_environment"></a> [environment](#input\_environment)                        | The environment of the project's resources. The possible values are: Development, Staging, Production)                                     | `string`       | `null`  |    no    |
| <a name="input_name"></a> [name](#input\_name)                                             | A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and " - ", up to a limit of 64 characters. | `string`       | n/a     |   yes    |
| <a name="input_purpose"></a> [purpose](#input\_purpose)                                    | The purpose of the project, (Default: "Web Application")                                                                                   | `string`       | `null`  |    no    |
| <a name="input_resources"></a> [resources](#input\_resources)                              | A list of uniform resource names (URNs) for the resources associated with the project                                                      | `list(string)` | `[]`    |    no    |

## Outputs

| Name                                                                  | Description                                                    |
| --------------------------------------------------------------------- | -------------------------------------------------------------- |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at)  | The date and time when the project was created (ISO8601).      |
| <a name="output_description"></a> [description](#output\_description) | Description of the volume.                                     |
| <a name="output_id"></a> [id](#output\_id)                            | The unique identifier for the volume.                          |
| <a name="output_owner_id"></a> [owner\_id](#output\_owner\_id)        | The id of the project owner.                                   |
| <a name="output_owner_uuid"></a> [owner\_uuid](#output\_owner\_uuid)  | The unique universal identifier of the project owner.          |
| <a name="output_updated_at"></a> [updated\_at](#output\_updated\_at)  | The date and time when the project was last updated (ISO8601). |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->