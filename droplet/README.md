# DigitalOcean Floating Droplet module

This module povisions a DigitalOcean droplet.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name         | Version   |
| ------------ | --------- |
| terraform    | >= 0.13.0 |
| digitalocean | ~> 1.22.2 |
| local        | ~> 1.4.0  |
| template     | ~> 2.1.2  |

## Providers

| Name         | Version   |
| ------------ | --------- |
| digitalocean | ~> 1.22.2 |
| local        | ~> 1.4.0  |

## Inputs

| Name                  | Description                                                   | Type           | Default                           | Required |
| --------------------- | ------------------------------------------------------------- | -------------- | --------------------------------- | :------: |
| backups               | Enable backups on droplet                                     | `bool`         | `false`                           |    no    |
| digital\_ocean\_token | Digital Ocean token                                           | `any`          | n/a                               |   yes    |
| floating\_ip          | Floating IP address(if available) to assign to the droplet    | `any`          | `null`                            |    no    |
| image                 | The droplet image id                                          | `string`       | `"ubuntu-20-04-x64"`              |    no    |
| ipv6                  | Enable ipv6 on droplet                                        | `bool`         | `true`                            |    no    |
| monitoring            | Enable monitoring on droplet                                  | `bool`         | `true`                            |    no    |
| name                  | The droplet name                                              | `any`          | n/a                               |   yes    |
| packages              | Packages to install                                           | `list(string)` | `[]`                              |    no    |
| plan                  | The droplet plan                                              | `string`       | `"basic"`                         |    no    |
| private\_networking   | Enable private networking on droplet                          | `bool`         | `true`                            |    no    |
| project               | Project's name to which droplet is assigned                   | `string`       | `"default"`                       |    no    |
| region                | The droplet region                                            | `string`       | `"sgp1"`                          |    no    |
| size                  | Size of the droplet                                           | `string`       | `"s-1vcpu-2gb"`                   |    no    |
| ssh\_key\_names       | A list of SSH key names to enable on droplet                  | `list(string)` | `[]`                              |    no    |
| swap\_file            | Name of swap file                                             | `string`       | `"/swap"`                         |    no    |
| swap\_size            | Size of swapfile in bytes                                     | `number`       | `2147483648`                      |    no    |
| tags                  | A list of tags to apply on droplet                            | `list(string)` | `[]`                              |    no    |
| user\_data            | Relative path to user-data template file                      | `string`       | `"./templates/cloud-config.tmpl"` |    no    |
| user\_groups          | List of groups to assign to user                              | `list(string)` | <pre>[<br>  "sudo"<br>]</pre>     |    no    |
| username              | Username of the user to access the droplet                    | `string`       | `"dzangolab"`                     |    no    |
| volumes               | Names of block storage volumes to be attached to the Droplet. | `list(string)` | `[]`                              |    no    |
| vpc                   | The name of the VPC where the Droplet will be located.        | `any`          | `null`                            |    no    |

## Outputs

| Name                     | Description |
| ------------------------ | ----------- |
| private\_ipv4\_addresses | n/a         |
| public\_ipv4\_addresses  | n/a         |
| public\_ipv6\_addresses  | n/a         |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
