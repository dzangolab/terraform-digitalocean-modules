# DigitalOcean Floating IP module

This module provisions a DigitalOcean block-storage volume.

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
| [digitalocean_volume](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/volume) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | A free-form text field up to a limit of 1024 bytes to describe a block storage volume. | `string` | `null` | no |
| digitalocean\_token | Digital Ocean token | `string` | n/a | yes |
| droplet\_ids | A list of associated droplet ids. | `list(string)` | `null` | no |
| initial\_filesystem\_label | Initial filesystem label for the block storage volume. | `string` | `null` | no |
| initial\_filesystem\_type | Initial filesystem type (xfs or ext4) for the block storage volume. | `string` | `null` | no |
| name | A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and " - ", up to a limit of 64 characters. | `string` | n/a | yes |
| region | The region that the block storage volume will be created in. | `string` | `"sgp1"` | no |
| size | The size of the block storage volume in GiB. If updated, can only be expanded. | `number` | `10` | no |
| snapshot\_id | The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limitied on creation to that of the referenced snapshot. | `string` | `null` | no |
| tags | A list of the tags to be applied to this Volume. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| description | Description of the volume. |
| droplet\_ids | A list of associated droplet ids. |
| filesystem\_label | Filesystem label for the block storage volume. |
| filesystem\_type | Filesystem type (xfs or ext4) for the block storage volume. |
| id | The unique identifier for the volume. |
| initial\_filesystem\_label | Filesystem label for the block storage volume when it was first created. |
| initial\_filesystem\_type | Filesystem type (xfs or ext4) for the block storage volume when it was first created. |
| name | Name of the volume. |
| region | The region that the volume is created in. |
| snapshot\_id | The ID of the existing volume snapshot from which this volume was created from. |
| tags | List of applied tags to the volume. |
| urn | The uniform resource name (URN) for the volume. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->