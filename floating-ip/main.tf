resource "digitalocean_floating_ip" "this" {
  count = var.count

  droplet_id = var.droplet_id

  region = var.region
}
