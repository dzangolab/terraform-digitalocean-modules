locals {
  floating_ip = var.floating_ip
}

output "private_ipv4_addresses" {
  value = digitalocean_droplet.droplet.ipv4_address_private
}

output "public_ipv4_addresses" {
  value = digitalocean_droplet.droplet.ipv4_address
}

output "public_ipv6_addresses" {
  value = digitalocean_droplet.droplet.ipv6_address
}

resource "local_file" "ansible_inventory" {
  content = templatefile(
    "./templates/hosts.tmpl",
    {
      name      = digitalocean_droplet.droplet.name
      project   = data.digitalocean_project.project.name
      public_ip = local.floating_ip != null ? local.floating_ip : digitalocean_droplet.droplet.ipv4_address
    }
  )
  filename = "hosts"
}

