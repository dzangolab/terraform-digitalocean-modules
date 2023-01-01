data "digitalocean_ssh_key" "ssh_keys" {
  count = length(var.ssh_key_names)
  name  = var.ssh_key_names[count.index]
}

resource "digitalocean_droplet" "this" {
  backups    = var.backups
  image      = var.image
  ipv6       = var.ipv6
  monitoring = var.monitoring
  name       = var.name
  region     = var.region
  size       = var.size
  ssh_keys   = data.digitalocean_ssh_key.ssh_keys[*].id
  tags       = var.tags
  user_data = templatefile(var.user_data, {
    groups    = join(",", var.user_groups)
    packages  = var.packages
    username  = var.username
    ssh_keys  = concat(var.ssh_keys, data.digitalocean_ssh_key.ssh_keys[*].public_key)
    swap_file = var.swap_file
    swap_size = var.swap_size
    volumes   = var.volumes[0].id != "none" ? var.volumes : []
  })
  volume_ids = var.volumes[0].id != "none" ? var.volumes.*.id : []
  vpc_uuid   = var.vpc_id
}

resource "digitalocean_project_resources" "project" {
  depends_on = [digitalocean_droplet.this]
  project    = var.project_id
  resources = [
    digitalocean_droplet.this.urn
  ]
}

resource "digitalocean_reserved_ip_assignment" "reserved_ip" {
  count      = var.reserved_ip != null ? 1 : 0
  depends_on = [digitalocean_droplet.this]
  droplet_id = digitalocean_droplet.this.id
  ip_address = var.reserved_ip

  provisioner "local-exec" {
    command = "ssh-keyscan ${self.ip_address} 2>&1 | grep -vE '^#' >> ~/.ssh/known_hosts"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "sed -i -e '/^${self.ip_address} .*/d' ~/.ssh/known_hosts"
  }
}
