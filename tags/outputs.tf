output "ids" {
  description = "The list of id of the new tags."
  value       = digitalocean_tag.this.*.id
}

output "names" {
  description = "The list of name of the tags."
  value       = tolist(setunion(digitalocean_tag.this.*.name, data.digitalocean_tags.existing_tags.tags.*.name))
}
