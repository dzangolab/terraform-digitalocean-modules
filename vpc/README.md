# DigitalOcean Floating IP module

This module provisions a DigitalOcean VPC.

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

| Name                                                                                                                 | Type     |
| -------------------------------------------------------------------------------------------------------------------- | -------- |
| [digitalocean_vpc.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/vpc) | resource |

## Inputs

| Name                                                                                       | Description                                                                                                                                                                                                                                       | Type     | Default  | Required |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- | -------- | :------: |
| <a name="input_description"></a> [description](#input\_description)                        | A free-form text field up to a limit of 255 characters to describe the VPC.                                                                                                                                                                       | `string` | `null`   |    no    |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token                                                                                                                                                                                                                               | `string` | n/a      |   yes    |
| <a name="input_ip_range"></a> [ip\_range](#input\_ip\_range)                               | The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24. | `string` | `null`   |    no    |
| <a name="input_name"></a> [name](#input\_name)                                             | A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only.                                                                                                                                                 | `string` | n/a      |   yes    |
| <a name="input_region"></a> [region](#input\_region)                                       | The region that the Floating IP is reserved to.                                                                                                                                                                                                   | `string` | `"sgp1"` |    no    |

## Outputs

| Name                                                                 | Description                                                                    |
| -------------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | The date and time of when the VPC was created.                                 |
| <a name="output_default"></a> [default](#output\_default)            | A boolean indicating whether or not the VPC is the default one for the region. |
| <a name="output_id"></a> [id](#output\_id)                           | The unique identifier for the VPC.                                             |
| <a name="output_urn"></a> [urn](#output\_urn)                        | The uniform resource name (URN) for the VPC.                                   |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->