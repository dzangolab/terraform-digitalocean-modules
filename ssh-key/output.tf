output "fingerprints" {
  description = "The fingerprints of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: v.fingerprint
  }
}

output "ids" {
  description = "The unique IDs of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: v.id
  }
}

output "keys" {
  description: "The SSH keys"
  value = {
    for k,v in digitalocean_ssh_key.this: {
      "fingerprint": v.fingerprint,
      "id": v.id,
      "name": v.name
      "public_key": v.public_key
    }
  }
}

output "names" {
  description = "The names of the SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: v.name
  }
}

output "public_keys" {
  description = "The text of the public SSH keys."
  value       = {
    for k,v in digitalocean_ssh_key.this: v.public_key
  }
}
