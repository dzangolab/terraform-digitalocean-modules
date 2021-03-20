resource "digitalocean_volume" "this" {
  description = var.description
  initial_filesystem_label = var.initial_filesystem_label
  initial_filesystem_type = var.initial_filesystem_type
  name        = var.name
  region      = var.region
  size = var.size
  snapshot_id = var.snapshot_id
  tags = var.tags
}
