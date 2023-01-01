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
