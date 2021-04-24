resource "digitalocean_firewall" "this" {
  droplet_ids = var.droplet_ids
  name = var.name
  tags = var.tags

  dynamic "inbound_rule" {
    for_each var.rules {
      content {
        protocol = inbound_rule.value["protocol"]
        source_tags = inbound_rule.value["source_tags"] 
      }
    }
  }
}
