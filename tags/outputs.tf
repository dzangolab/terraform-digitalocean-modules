output "ids" {
  description = "The ids of the created tags. Does not include the ids of pre-existing tags."
  value       = digitalocean_tag.this.*.id
}

output "names" {
  description = "The names of the tags. Includes all the tags specified, including the pre-existing ones."
  value       = tolist(setunion(digitalocean_tag.this.*.name, data.digitalocean_tags.existing_tags.tags.*.name))
}
