# DigitalOcean Floating IP module

This module provisions a DigitalOcean floating IP address.

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
| [digitalocean_floating_ip.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/floating_ip) | resource |
| [digitalocean_project_resources.floating_ips](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token | `string` | n/a | yes |
| <a name="input_droplet_id"></a> [droplet\_id](#input\_droplet\_id) | The ID of Droplet that the Floating IPs will be assigned to. | `string` | `null` | no |
| <a name="input_ip_count"></a> [ip\_count](#input\_ip\_count) | The number of Floating IPs to create | `number` | `1` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The id of the project to which the Floating IPs will be moved to. | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region that the Floating IP is reserved to. | `string` | `"sgp1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | n/a |
| <a name="output_urn"></a> [urn](#output\_urn) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->