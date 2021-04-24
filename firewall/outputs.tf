output "created_at" {
  description = "A time value given in ISO8601 combined date and time format that represents when the Firewall was created."
  value       = digitalocean_firewall.this.created_at
}

output "droplet_ids" {
  description = "The list of the IDs of the Droplets assigned to the Firewall."
  value = digitalocean_firewall.this.droplet_ids
}

output "id" {
  description = "A unique ID that can be used to identify and reference a Firewall."
  value = digitalocean_firewall.this.id
}

output "inbound_rules" {
  description = "The inbound access rule block for the Firewall."
  value = digitalocean_firewall.this.inbound_rules
}

output "name" {
  description = "The name of the Firewall."
  value = digitalocean_firewall.this.name
}

output "outbound_rules" {
  description = "The outbound access rule block for the Firewall."
  value = digitalocean_firewall.this.outbound_rules
}

output "pending_changes" {
  description = "A list of object containing the fields, \"droplet_id\", \"removing\", and \"status\". It is provided to detail exactly which Droplets are having their security policies updated. When empty, all changes have been successfully applied."
  value = digitalocean_firewall.this.pending_changes
}

output "status" {
  description = "A status string indicating the current state of the Firewall. This can be \"waiting\", \"succeeded\", or \"failed\"."
  value = digitalocean_firewall.this.status
}

output "tags" {
  description = "The names of the Tags assigned to the Firewall."
  value = digitalocean_firewall.this.tags
}
