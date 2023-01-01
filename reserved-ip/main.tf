resource "digitalocean_reserved_ip" "this" {
  count = var.ip_count

  region = var.region
}
