resource "digitalocean_firewall" "this" {
  droplet_ids = var.droplet_ids
  name = var.name
  tags = var.tags
}
