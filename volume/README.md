# DigitalOcean Floating IP module

This module provisions a DigitalOcean block-storage volume.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 1.22.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 1.22.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_volume.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A free-form text field up to a limit of 1024 bytes to describe a block storage volume. | `string` | `null` | no |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token | `string` | n/a | yes |
| <a name="input_droplet_ids"></a> [droplet\_ids](#input\_droplet\_ids) | A list of associated droplet ids. | `list(string)` | `null` | no |
| <a name="input_initial_filesystem_label"></a> [initial\_filesystem\_label](#input\_initial\_filesystem\_label) | Initial filesystem label for the block storage volume. | `string` | `null` | no |
| <a name="input_initial_filesystem_type"></a> [initial\_filesystem\_type](#input\_initial\_filesystem\_type) | Initial filesystem type (xfs or ext4) for the block storage volume. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and " - ", up to a limit of 64 characters. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region that the block storage volume will be created in. | `string` | `"sgp1"` | no |
| <a name="input_size"></a> [size](#input\_size) | The size of the block storage volume in GiB. If updated, can only be expanded. | `number` | `10` | no |
| <a name="input_snapshot_id"></a> [snapshot\_id](#input\_snapshot\_id) | The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limitied on creation to that of the referenced snapshot. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of the tags to be applied to this Volume. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_description"></a> [description](#output\_description) | Description of the volume. |
| <a name="output_droplet_ids"></a> [droplet\_ids](#output\_droplet\_ids) | A list of associated droplet ids. |
| <a name="output_filesystem_label"></a> [filesystem\_label](#output\_filesystem\_label) | Filesystem label for the block storage volume. |
| <a name="output_filesystem_type"></a> [filesystem\_type](#output\_filesystem\_type) | Filesystem type (xfs or ext4) for the block storage volume. |
| <a name="output_id"></a> [id](#output\_id) | The unique identifier for the volume. |
| <a name="output_initial_filesystem_label"></a> [initial\_filesystem\_label](#output\_initial\_filesystem\_label) | Filesystem label for the block storage volume when it was first created. |
| <a name="output_initial_filesystem_type"></a> [initial\_filesystem\_type](#output\_initial\_filesystem\_type) | Filesystem type (xfs or ext4) for the block storage volume when it was first created. |
| <a name="output_name"></a> [name](#output\_name) | Name of the volume. |
| <a name="output_region"></a> [region](#output\_region) | The region that the volume is created in. |
| <a name="output_snapshot_id"></a> [snapshot\_id](#output\_snapshot\_id) | The ID of the existing volume snapshot from which this volume was created from. |
| <a name="output_tags"></a> [tags](#output\_tags) | List of applied tags to the volume. |
| <a name="output_urn"></a> [urn](#output\_urn) | The uniform resource name (URN) for the volume. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->