resource "digitalocean_ssh_key" "this" {
  for_each = var.keys

  name       = each.value.name
  public_key = file(each.value.public_key)
}
