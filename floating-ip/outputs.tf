output "ip_address" {
  description = "The IP Address of the resource."
  value = digitalocean_floating_ip.this[*].ip_address
}

output "urn" {
  description = "The uniform resource name of the floating ip."
  value = digitalocean_floating_ip.this[*].urn
}
