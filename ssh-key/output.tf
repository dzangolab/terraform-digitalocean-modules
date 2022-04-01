output "id" {
  description = "The unique ID of the key."
  value       = digitalocean_ssh_key.this.id
}

output "name" {
  description = "The name of the SSH key."
  value       = digitalocean_ssh_key.this.name
}

output "public_key" {
  description = "The text of the public key."
  value       = digitalocean_ssh_key.this.public_key
}

output "fingerprint" {
  description = "The fingerprint of the SSH key."
  value       = digitalocean_ssh_key.this.fingerprint
}
