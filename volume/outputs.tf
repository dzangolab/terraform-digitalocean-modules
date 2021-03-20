output "description" {
  description = "Description of the volume."
  value       = digitalocean_volume.this.description
}

output "droplet_ids" {
  description = "A list of associated droplet ids."
  value       = digitalocean_volume.this.droplet_ids
}

output "filesystem_label" {
  description = "Filesystem label for the block storage volume."
  value       = digitalocean_volume.this.filesystem_label
}

output "filesystem_type" {
  description = "Filesystem type (xfs or ext4) for the block storage volume."
  value       = digitalocean_volume.this.filesystem_type
}

output "id" {
  description = "The unique identifier for the volume."
  value       = digitalocean_volume.this.id
}

output "initial_filesystem_label" {
  description = "Filesystem label for the block storage volume when it was first created."
  value       = digitalocean_volume.this.initial_filesystem_label
}

output "initial_filesystem_type" {
  description = "Filesystem type (xfs or ext4) for the block storage volume when it was first created."
  value       = digitalocean_volume.this.initial_filesystem_type
}

output "name" {
  description = "Name of the volume."
  value       = digitalocean_volume.this.name
}

output "region" {
  description = "The region that the volume is created in."
  value       = digitalocean_volume.this.region
}

output "snapshot_id" {
  description = "The ID of the existing volume snapshot from which this volume was created from."
  value       = digitalocean_volume.this.snapshot_id
}

output "tags" {
  description = "List of applied tags to the volume."
  value       = digitalocean_volume.this.tags
}

output "urn" {
  description = "The uniform resource name (URN) for the volume."
  value       = digitalocean_volume.this.urn
}
