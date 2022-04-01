resource "digitalocean_ssh_key" "this" {
  name       = var.name
  public_key = file(var.file)
}
