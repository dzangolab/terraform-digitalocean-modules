resource "digitalocean_ssh_key" "this" {
  for_each = { for key in var.keys : key.name => key }

  name       = each.value.name
  public_key = file(each.value.public_key)
}
