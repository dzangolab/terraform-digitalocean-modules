# DigitalOcean Floating IP module

This module provisions a DigitalOcean project.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| digitalocean | ~> 1.22.2 |

## Providers

| Name | Version |
|------|---------|
| digitalocean | ~> 1.22.2 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [digitalocean_project](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | The description of the project | `string` | `null` | no |
| digitalocean\_token | Digital Ocean token | `string` | n/a | yes |
| environment | The environment of the project's resources. The possible values are: Development, Staging, Production) | `string` | `null` | no |
| name | A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and " - ", up to a limit of 64 characters. | `string` | n/a | yes |
| purpose | The purpose of the project, (Default: "Web Application") | `string` | `null` | no |
| resources | A list of uniform resource names (URNs) for the resources associated with the project | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| created\_at | The date and time when the project was created (ISO8601). |
| description | Description of the volume. |
| id | The unique identifier for the volume. |
| owner\_id | The id of the project owner. |
| owner\_uuid | The unique universal identifier of the project owner. |
| updated\_at | The date and time when the project was last updated (ISO8601). |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->