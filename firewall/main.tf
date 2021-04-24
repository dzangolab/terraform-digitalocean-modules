resource "digitalocean_firewall" "this" {
  droplet_ids = var.droplet_ids
  name        = var.name
  tags        = var.tags

  dynamic "inbound_rule" {
    for_each = var.inbound_rules
    content {
      port_range       = inbound_rule.value["port_range"]
      protocol         = inbound_rule.value["protocol"]
      source_addresses = inbound_rule.value["source_addresses"]
      source_tags      = inbound_rule.value["source_tags"]
    }
  }

  dynamic "outbound_rule" {
    for_each = var.outbound_rules
    content {
      destination_addresses = outbound_rule.value["destination_addresses"]
      destination_tags      = outbound_rule.value["destination_tags"]
      port_range            = outbound_rule.value["port_range"]
      protocol              = outbound_rule.value["protocol"]
    }
  }
}
