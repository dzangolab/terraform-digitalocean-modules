locals {
  floating_ip = var.floating_ip
  username    = var.username
}

output "disk" {
  description = "The size of the droplet's disk in GB"
  value       = digitalocean_droplet.this.disk
}

output "id" {
  description = "The ID of the droplet"
  value       = digitalocean_droplet.this.id
}

output "image" {
  description = "The image of the droplet"
  value       = digitalocean_droplet.this.image
}

output "ipv4_address" {
  description = "The IPv4 address of the droplet"
  value       = digitalocean_droplet.this.ipv4_address
}

output "ipv4_address_private" {
  description = "The private networking IPv4 address of the droplet"
  value       = digitalocean_droplet.this.ipv4_address_private
}

output "ipv6" {
  description = "Is IPv6 enabled"
  value       = digitalocean_droplet.this.ipv6
}

output "ipv6_address" {
  description = "The IPv6 address of the droplet"
  value       = digitalocean_droplet.this.ipv6_address
}

output "locked" {
  description = "is the droplet locked"
  value       = digitalocean_droplet.this.locked
}

output "name" {
  description = "The name of the droplet"
  value       = digitalocean_droplet.this.name
}

output "price_hourly" {
  description = "Droplet hourly price"
  value       = digitalocean_droplet.this.price_hourly
}

output "price_monthly" {
  description = "Droplet monthly price"
  value       = digitalocean_droplet.this.price_monthly
}

output "size" {
  description = "The droplet size"
  value       = digitalocean_droplet.this.size
}

output "status" {
  description = "The status of the droplet"
  value       = digitalocean_droplet.this.status
}

output "tags" {
  description = "The tags associated with the Droplet"
  value       = digitalocean_droplet.this.tags
}

output "vcpus" {
  description = "The number of the droplet's virtual CPUs"
  value       = digitalocean_droplet.this.vcpus
}

output "volume_ids" {
  description = "A list of the attached block storage volumes"
  value       = digitalocean_droplet.this.volume_ids
}

resource "local_file" "ansible_inventory" {
  description = "Ansible inventory"
  content = templatefile(
    var.ansible_inventory,
    {
      name      = digitalocean_droplet.this.name
      public_ip = local.floating_ip != null ? local.floating_ip : digitalocean_droplet.this.ipv4_address
      username  = local.username
    }
  )
  filename = "hosts"
}

resource "local_file" "private_ip" {
  description = "Ansible-formatted variable file to store the private ip of the droplet. This is useful if you want to initiate a Docker swarm on this droplet."
  content = templatefile(
    var.private_ip_template,
    {
      private_ip = digitalocean_droplet.this.ipv4_address_private
    }
  )
  filename = "private_ip"
}
