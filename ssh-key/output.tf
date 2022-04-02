output "fingerprints" {
  description = "The fingerprints of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: k => v.fingerprint
  }
}

output "ids" {
  description = "The unique IDs of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: k => v.id
  }
}

output "keys" {
  description = "The SSH keys"
  value = digitalocean_ssh_key.this
}

output "names" {
  description = "The names of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: k => v.name
  }
}

output "public_keys" {
  description = "The text of the public SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: k => v.public_key
  }
}
