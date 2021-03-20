# DigitalOcean Floating IP module

This modules provisions a DigitalOcean floating IP address.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0 |
| digitalocean | ~> 1.22.2 |
| local | ~> 1.4.0 |
| template | ~> 2.1.2 |

## Providers

| Name | Version |
|------|---------|
| digitalocean | ~> 1.22.2 |

## Modules

No Modules.

## Resources

| Name |
|------|
| [digitalocean_floating_ip](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/floating_ip) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| droplet\_id | (Optional) The ID of Droplet that the Floating IP will be assigned to. | `string` | n/a | yes |
| region | (Required) The region that the Floating IP is reserved to. | `string` | `"sgp1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| ip\_address | n/a |
| urn | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->