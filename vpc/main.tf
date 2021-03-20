resource "digitalocean_vpc" "this" {
  description = var.description
  ip_range = var.ip_range
  name = var.name
  region = var.region
}
