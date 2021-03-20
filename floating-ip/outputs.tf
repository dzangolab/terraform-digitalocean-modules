output "ip_address" {
  value = digitalocean_floating_ip.this.ip_address
}

output "urn" {
  value = digitalocean_floating_ip.this.urn
}
