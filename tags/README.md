# DigitalOcean tag module

This module provisions multiple DigitalOcean tags. It excludes any pre-existing tags, in order to avoid duplicate tags.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 1.22.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | 2.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_tag.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/tag) | resource |
| [digitalocean_tags.existing_tags](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/tags) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token | `string` | n/a | yes |
| <a name="input_names"></a> [names](#input\_names) | The names of the tags. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ids"></a> [ids](#output\_ids) | The ids of the created tags. Does not include the ids of pre-existing tags. |
| <a name="output_names"></a> [names](#output\_names) | The names of the tags. Includes all the tags specified, including the pre-existing ones. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->