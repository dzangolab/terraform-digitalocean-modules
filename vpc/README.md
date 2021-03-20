# DigitalOcean Floating IP module

This module provisions a DigitalOcean VPC.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name         | Version   |
| ------------ | --------- |
| terraform    | >= 0.13.0 |
| digitalocean | ~> 1.22.2 |

## Providers

| Name         | Version   |
| ------------ | --------- |
| digitalocean | ~> 1.22.2 |

## Modules

No Modules.

## Resources

| Name                                                                                                                            |
| ------------------------------------------------------------------------------------------------------------------------------- |
| [digitalocean_floating_ip](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/floating_ip) |

## Inputs

| Name                | Description                                                            | Type     | Default  | Required |
| ------------------- | ---------------------------------------------------------------------- | -------- | -------- | :------: |
| digitalocean\_token | Digital Ocean token                                                    | `string` | n/a      |   yes    |
| droplet\_id         | (Optional) The ID of Droplet that the Floating IP will be assigned to. | `string` | `null`   |    no    |
| region              | (Required) The region that the Floating IP is reserved to.             | `string` | `"sgp1"` |    no    |

## Outputs

| Name        | Description |
| ----------- | ----------- |
| ip\_address | n/a         |
| urn         | n/a         |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->