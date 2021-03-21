# DigitalOcean Floating Droplet module

This module povisions a DigitalOcean droplet.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name         | Version   |
| ------------ | --------- |
| terraform    | >= 0.13.0 |
| digitalocean | >= 1.22.2 |
| local        | >= 1.4.0  |
| template     | >= 2.1.2  |

## Providers

| Name         | Version   |
| ------------ | --------- |
| digitalocean | >= 1.22.2 |

## Modules

No Modules.

## Resources

| Name                                                                                                                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| [digitalocean_droplet](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet)                               |
| [digitalocean_floating_ip_assignment](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/floating_ip_assignment) |
| [digitalocean_project_resources](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project_resources)           |
| [digitalocean_ssh_key](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/ssh_key)                            |

## Inputs

| Name                | Description                                                                                                                                                                                                                           | Type           | Default                           | Required |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | --------------------------------- | :------: |
| backups             | Enable backups on droplet                                                                                                                                                                                                             | `bool`         | `false`                           |    no    |
| floating\_ip        | Floating IP address(if available) to assign to the droplet                                                                                                                                                                            | `string`       | `null`                            |    no    |
| image               | The droplet image ID or slug.                                                                                                                                                                                                         | `string`       | `"ubuntu-20-04-x64"`              |    no    |
| ipv6                | Enable ipv6 on droplet                                                                                                                                                                                                                | `bool`         | `false`                           |    no    |
| monitoring          | Enable monitoring on droplet                                                                                                                                                                                                          | `bool`         | `true`                            |    no    |
| name                | The droplet name                                                                                                                                                                                                                      | `string`       | n/a                               |   yes    |
| packages            | Packages to install on the droplet.                                                                                                                                                                                                   | `list(string)` | `[]`                              |    no    |
| private\_networking | Boolean controlling if private networking is enabled. When VPC is enabled on an account, this will provision the droplet inside of your account's default VPC for the region. Use the vpc\_uuid attribute to specify a different VPC. | `bool`         | `true`                            |    no    |
| project\_id         | The ID of the project to which the droplet is assigned                                                                                                                                                                                | `string`       | n/a                               |   yes    |
| region              | The region to start in.                                                                                                                                                                                                               | `string`       | `"sgp1"`                          |    no    |
| size                | Size of the droplet                                                                                                                                                                                                                   | `string`       | `"s-1vcpu-2gb"`                   |    no    |
| ssh\_keys           | A list of SSH key names to enable on droplet                                                                                                                                                                                          | `list(string)` | n/a                               |   yes    |
| swap\_file          | Name of swap file                                                                                                                                                                                                                     | `string`       | `"/swap"`                         |    no    |
| swap\_size          | Size of swapfile in bytes                                                                                                                                                                                                             | `number`       | `2147483648`                      |    no    |
| tags                | A list of tags to apply on droplet                                                                                                                                                                                                    | `list(string)` | `[]`                              |    no    |
| user\_data          | Relative path to user-data template file                                                                                                                                                                                              | `string`       | `"./templates/cloud-config.tmpl"` |    no    |
| user\_groups        | List of groups to assign to user                                                                                                                                                                                                      | `list(string)` | <pre>[<br>  "sudo"<br>]</pre>     |    no    |
| username            | Username of the user to be created on the droplet                                                                                                                                                                                     | `string`       | n/a                               |   yes    |
| volume\_ids         | Ids of block storage volumes to be attached to the droplet.                                                                                                                                                                           | `list(string)` | `[]`                              |    no    |
| volume\_mounts      | Location where block storage volumes should be mounted on the droplet.                                                                                                                                                                | `list(string)` | `[]`                              |    no    |
| vpc\_id             | The ID of the VPC where the droplet will be located.                                                                                                                                                                                  | `string`       | `null`                            |    no    |

## Outputs

| Name                   | Description                                        |
| ---------------------- | -------------------------------------------------- |
| disk                   | The size of the droplet's disk in GB               |
| id                     | The ID of the droplet                              |
| image                  | The image of the droplet                           |
| ipv4\_address          | The IPv4 address of the droplet                    |
| ipv4\_address\_private | The private networking IPv4 address of the droplet |
| ipv6                   | Is IPv6 enabled                                    |
| ipv6\_address          | The IPv6 address of the droplet                    |
| locked                 | is the droplet locked                              |
| name                   | The name of the droplet                            |
| price\_hourly          | Droplet hourly price                               |
| price\_monthly         | Droplet monthly price                              |
| private\_networking    | Is private networking enabled                      |
| size                   | The droplet size                                   |
| status                 | The status of the droplet                          |
| tags                   | The tags associated with the Droplet               |
| vcpus                  | The number of the droplet's virtual CPUs           |
| volume\_ids            | A list of the attached block storage volumes       |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
