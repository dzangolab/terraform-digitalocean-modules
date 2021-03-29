output "swarm_manager_public_ips" {
  description = "The manager nodes public ipv4 adresses"
  value       = digitalocean_droplet.manager.*.ipv4_address
}