output "ids" {
  description = "The id of the tag."
  value       = digitalocean_tag.this.*.id
}

output "names" {
  description = "The name of the tag."
  value       = digitalocean_tag.this.*.name
}
