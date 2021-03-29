resource "digitalocean_floating_ip" "this" {
  count = var.ip_count

  droplet_id = var.droplet_id

  region = var.region
}

resource "digitalocean_project_resources" "floating_ips" {
  count = var.project_id ? var.ip_count : 0
  depends_on = [digitalocean_floating_ip.this]
  project    = var.project_id
  resources = [
    digitalocean_floating_ip.this[count.index].urn
  ]
}
