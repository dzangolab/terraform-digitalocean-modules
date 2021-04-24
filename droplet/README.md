# DigitalOcean Floating Droplet module

This module povisions a DigitalOcean droplet.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 1.22.2 |
| <a name="requirement_local"></a> [local](#requirement\_local) | >= 1.4.0 |
| <a name="requirement_template"></a> [template](#requirement\_template) | >= 2.1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 1.22.2 |
| <a name="provider_local"></a> [local](#provider\_local) | >= 1.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_droplet.this](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet) | resource |
| [digitalocean_floating_ip_assignment.floating_ip](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/floating_ip_assignment) | resource |
| [digitalocean_project_resources.project](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources) | resource |
| [local_file.ansible_inventory](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [digitalocean_ssh_key.ssh_keys](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ansible_inventory"></a> [ansible\_inventory](#input\_ansible\_inventory) | Template for generating the ansible inventory | `string` | `"templates/hosts.tmpl"` | no |
| <a name="input_backups"></a> [backups](#input\_backups) | Enable backups on droplet | `bool` | `false` | no |
| <a name="input_digitalocean_token"></a> [digitalocean\_token](#input\_digitalocean\_token) | Digital Ocean token | `string` | n/a | yes |
| <a name="input_floating_ip"></a> [floating\_ip](#input\_floating\_ip) | Floating IP address(if available) to assign to the droplet | `string` | `null` | no |
| <a name="input_image"></a> [image](#input\_image) | The droplet image ID or slug. | `string` | `"ubuntu-20-04-x64"` | no |
| <a name="input_ipv6"></a> [ipv6](#input\_ipv6) | Enable ipv6 on droplet | `bool` | `false` | no |
| <a name="input_monitoring"></a> [monitoring](#input\_monitoring) | Enable monitoring on droplet | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The droplet name | `string` | n/a | yes |
| <a name="input_packages"></a> [packages](#input\_packages) | Packages to install on the droplet. | `list(string)` | `[]` | no |
| <a name="input_private_networking"></a> [private\_networking](#input\_private\_networking) | Boolean controlling if private networking is enabled. When VPC is enabled on an account, this will provision the droplet inside of your account's default VPC for the region. Use the vpc\_uuid attribute to specify a different VPC. | `bool` | `true` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project to which the droplet is assigned | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to start in. | `string` | `"sgp1"` | no |
| <a name="input_size"></a> [size](#input\_size) | Size of the droplet | `string` | `"s-1vcpu-2gb"` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | A list of SSH key names to enable on droplet | `list(string)` | n/a | yes |
| <a name="input_swap_file"></a> [swap\_file](#input\_swap\_file) | Name of swap file | `string` | `"/swap"` | no |
| <a name="input_swap_size"></a> [swap\_size](#input\_swap\_size) | Size of swapfile in bytes | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A list of tags to apply on droplet | `list(string)` | `[]` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | Relative path to user-data template file | `string` | `"./templates/cloud-config.tmpl"` | no |
| <a name="input_user_groups"></a> [user\_groups](#input\_user\_groups) | List of groups to assign to user | `list(string)` | <pre>[<br>  "sudo"<br>]</pre> | no |
| <a name="input_username"></a> [username](#input\_username) | Username of the user to be created on the droplet | `string` | n/a | yes |
| <a name="input_volumes"></a> [volumes](#input\_volumes) | List of block storage volumes to be attached to the droplet. | <pre>list(object({<br>    id   = string<br>    name = string<br>    path = string<br>  }))</pre> | <pre>[<br>  {<br>    "id": "none",<br>    "name": "",<br>    "path": ""<br>  }<br>]</pre> | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC where the droplet will be located. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_disk"></a> [disk](#output\_disk) | The size of the droplet's disk in GB |
| <a name="output_id"></a> [id](#output\_id) | The ID of the droplet |
| <a name="output_image"></a> [image](#output\_image) | The image of the droplet |
| <a name="output_ipv4_address"></a> [ipv4\_address](#output\_ipv4\_address) | The IPv4 address of the droplet |
| <a name="output_ipv4_address_private"></a> [ipv4\_address\_private](#output\_ipv4\_address\_private) | The private networking IPv4 address of the droplet |
| <a name="output_ipv6"></a> [ipv6](#output\_ipv6) | Is IPv6 enabled |
| <a name="output_ipv6_address"></a> [ipv6\_address](#output\_ipv6\_address) | The IPv6 address of the droplet |
| <a name="output_locked"></a> [locked](#output\_locked) | is the droplet locked |
| <a name="output_name"></a> [name](#output\_name) | The name of the droplet |
| <a name="output_price_hourly"></a> [price\_hourly](#output\_price\_hourly) | Droplet hourly price |
| <a name="output_price_monthly"></a> [price\_monthly](#output\_price\_monthly) | Droplet monthly price |
| <a name="output_private_networking"></a> [private\_networking](#output\_private\_networking) | Is private networking enabled |
| <a name="output_size"></a> [size](#output\_size) | The droplet size |
| <a name="output_status"></a> [status](#output\_status) | The status of the droplet |
| <a name="output_tags"></a> [tags](#output\_tags) | The tags associated with the Droplet |
| <a name="output_vcpus"></a> [vcpus](#output\_vcpus) | The number of the droplet's virtual CPUs |
| <a name="output_volume_ids"></a> [volume\_ids](#output\_volume\_ids) | A list of the attached block storage volumes |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
