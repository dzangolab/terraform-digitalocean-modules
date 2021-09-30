data "digitalocean_ssh_key" "ssh_keys" {
  count = length(var.ssh_key_names)
  name  = var.ssh_key_names[count.index]
}

resource "digitalocean_droplet" "this" {
  image      = var.image
  ipv6       = var.ipv6
  monitoring = var.monitoring
  name       = var.name
  region     = var.region
  size       = var.size
  ssh_keys   = data.digitalocean_ssh_key.ssh_keys[*].id
  tags       = var.tags
  user_data  = templatefile(var.user_data, {
    groups   = join(",", var.user_groups)
    name     = var.name
    packages = var.packages
    ssh_keys = concat(var.ssh_keys, data.digitalocean_ssh_key.ssh_keys[*].public_key)
    username = var.username
  })
  vpc_uuid = var.vpc_id
}

resource "digitalocean_project_resources" "project" {
  depends_on = [digitalocean_droplet.this]
  project    = var.project_id
  resources = [
    digitalocean_droplet.this.urn
  ]
}


resource "digitalocean_floating_ip_assignment" "floating_ip" {
  count      = var.floating_ip != null ? 1 : 0
  depends_on = [digitalocean_droplet.this]
  droplet_id = digitalocean_droplet.this.id
  ip_address = var.floating_ip

  provisioner "local-exec" {
    when    = destroy
    command = "sed -i -e '/^${self.ip_address} .*/d' ~/.ssh/known_hosts"
  }
}

resource "digitalocean_firewall" "bastion" {
  name = var.name

  droplet_ids = [digitalocean_droplet.this.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
