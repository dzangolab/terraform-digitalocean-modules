resource "digitalocean_reserved_ip" "this" {
  count = var.ip_count

  region = var.region
}

resource "digitalocean_project_resources" "reserved_ips" {
  count      = var.project_id != null ? var.ip_count : 0
  depends_on = [digitalocean_reserved_ip.this]
  project    = var.project_id
  resources = [
    digitalocean_reserved_ip.this[count.index].urn
  ]
}

resource "digitalocean_reserved_ip_assignment" "reserved_ip" {
  count      = var.droplet_id != null ? 1 : 0
  depends_on = [digitalocean_reserved_ip.this]
  droplet_id = var.droplet_id
  ip_address = digitalocean_reserved_ip.this.ip_address

  provisioner "local-exec" {
    command = "ssh-keyscan ${self.ip_address} 2>&1 | grep -vE '^#' >> ~/.ssh/known_hosts"
  }

  provisioner "local-exec" {
    when    = destroy
    command = "sed -i -e '/^${self.ip_address} .*/d' ~/.ssh/known_hosts"
  }
}
