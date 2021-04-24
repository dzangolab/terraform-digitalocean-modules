# DigitalOcean firewall module

This module provisions a DigitalOcean firewall.

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
| [digitalocean_firewall.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token | `string` | n/a | yes |
| <a name="input_droplet_ids"></a> [droplet\_ids](#input\_droplet\_ids) | The list of the IDs of the Droplets assigned to the Firewall. | `list(string)` | `[]` | no |
| <a name="input_inbound_rules"></a> [inbound\_rules](#input\_inbound\_rules) | The inbound and outbound access rule block for the Firewall. | `list(any)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The Firewall name. | `string` | n/a | yes |
| <a name="input_outbound_rules"></a> [outbound\_rules](#input\_outbound\_rules) | The inbound and outbound access rule block for the Firewall. | `list(any)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The names of the Tags assigned to the Firewall. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_created_at"></a> [created\_at](#output\_created\_at) | A time value given in ISO8601 combined date and time format that represents when the Firewall was created. |
| <a name="output_droplet_ids"></a> [droplet\_ids](#output\_droplet\_ids) | The list of the IDs of the Droplets assigned to the Firewall. |
| <a name="output_id"></a> [id](#output\_id) | A unique ID that can be used to identify and reference a Firewall. |
| <a name="output_name"></a> [name](#output\_name) | The name of the Firewall. |
| <a name="output_pending_changes"></a> [pending\_changes](#output\_pending\_changes) | A list of object containing the fields, "droplet\_id", "removing", and "status". It is provided to detail exactly which Droplets are having their security policies updated. When empty, all changes have been successfully applied. |
| <a name="output_status"></a> [status](#output\_status) | A status string indicating the current state of the Firewall. This can be "waiting", "succeeded", or "failed". |
| <a name="output_tags"></a> [tags](#output\_tags) | The names of the Tags assigned to the Firewall. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->