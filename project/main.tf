resource "digitalocean_project" "this" {
  description = var.description
  environment = var.environment
  name        = var.name
  purpose     = var.purpose
  resources   = var.resources
}
