resource "digitalocean_firewall" "this" {
  droplet_ids = var.droplet_ids
  name = var.name
  tags = var.tags

  dynamic "inbound_rule" {
    for_each = var.inbound_rules
    content {
      protocol = inbound_rule.value["protocol"]
      source_tags = inbound_rule.value["source_tags"] 
    }
  }

  dynamic "outbound_rule" {
    for_each = var.outbound_rules
    content {
      protocol = outbound_rule.value["protocol"]
      destination_tags = outbound_rule.value["destination_tags"] 
    }
  }
}
