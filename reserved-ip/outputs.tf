output "ip_address" {
  description = "The IP Address of the resource."
  value       = digitalocean_reserved_ip.this[*].ip_address
}

output "urn" {
  description = "The uniform resource name of the reserved ip."
  value       = digitalocean_reserved_ip.this[*].urn
}
