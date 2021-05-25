data "digitalocean_tags" "existing_tags" {
  filter {
    key    = "name"
    values = var.names
  }
}

locals {
  new_tags = tolist(setsubtract(var.tags, data.digitalocean_tags.existing_tags.tags[*].name))
}

resource "digitalocean_tag" "this" {
  count = length(local.new_tags)
  name  = local.new_tags[count.index]
}
