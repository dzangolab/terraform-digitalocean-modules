resource "digitalocean_floating_ip" "this" {
  droplet_id = var.droplet_id

  region = var.region
}
