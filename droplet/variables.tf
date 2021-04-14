variable "backups" {
  default     = false
  description = "Enable backups on droplet"
  type        = bool
}

variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "floating_ip" {
  default     = null
  description = "Floating IP address(if available) to assign to the droplet"
  type        = string
}

variable "image" {
  default     = "ubuntu-20-04-x64"
  description = "The droplet image ID or slug."
}

variable "ipv6" {
  default     = false
  description = "Enable ipv6 on droplet"
  type        = bool
}

variable "monitoring" {
  default     = true
  description = "Enable monitoring on droplet"
  type        = bool
}

variable "name" {
  description = "The droplet name"
  type        = string
}

variable "packages" {
  default     = []
  description = "Packages to install on the droplet."
  type        = list(string)
}

variable "private_networking" {
  default     = true
  description = "Boolean controlling if private networking is enabled. When VPC is enabled on an account, this will provision the droplet inside of your account's default VPC for the region. Use the vpc_uuid attribute to specify a different VPC."
  type        = bool
}

variable "project_id" {
  description = "The ID of the project to which the droplet is assigned"
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "The region to start in."
  type        = string
}

variable "size" {
  default     = "s-1vcpu-2gb"
  description = "Size of the droplet"
  type        = string
}

variable "ssh_keys" {
  description = "A list of SSH key names to enable on droplet"
  type        = list(string)
}

variable "swap_file" {
  default     = "/swap"
  description = "Name of swap file"
  type        = string
}

variable "swap_size" {
  default     = 0
  description = "Size of swapfile in bytes"
  type        = number
}

variable "tags" {
  default     = []
  description = "A list of tags to apply on droplet"
  type        = list(string)
}

variable "user_data" {
  default     = "./templates/cloud-config.tmpl"
  description = "Relative path to user-data template file"
  type        = string
}

variable "user_groups" {
  default = [
    "sudo"
  ]
  description = "List of groups to assign to user"
  type        = list(string)
}

variable "username" {
  description = "Username of the user to be created on the droplet"
  type        = string
}

variable "volumes" {
  default     = [{
    id   = "none"
    name = ""
    path = ""
  }]
  description = "List of block storage volumes to be attached to the droplet."
  type        = list(object{
    id   = string
    name = string
    path = string
  })
}

variable "vpc_id" {
  default     = null
  description = "The ID of the VPC where the droplet will be located."
  type        = string
}
