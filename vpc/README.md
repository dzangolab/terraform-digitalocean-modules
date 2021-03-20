# DigitalOcean Floating IP module

This module provisions a DigitalOcean VPC.

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
| [digitalocean_vpc](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | A free-form text field up to a limit of 255 characters to describe the VPC. | `string` | `null` | no |
| digitalocean\_token | Digital Ocean token | `string` | n/a | yes |
| ip\_range | The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24. | `string` | `null` | no |
| name | A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only. | `string` | n/a | yes |
| region | The region that the Floating IP is reserved to. | `string` | `"sgp1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| created\_at | The date and time of when the VPC was created. |
| default | A boolean indicating whether or not the VPC is the default one for the region. |
| id | The unique identifier for the VPC. |
| urn | The uniform resource name (URN) for the VPC. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->