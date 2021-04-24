resource "digitalocean_tag" "this" {
  count = length(var.names)
  name  = var.names[count.index]
}
