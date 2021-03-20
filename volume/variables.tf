variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "description" {
  default     = null
  description = "A free-form text field up to a limit of 1024 bytes to describe a block storage volume."
  type        = string
}

variable "droplet_ids" {
  default     = null
  description = "A list of associated droplet ids."
  type        = list(string)
}

variable "initial_filesystem_label" {
  default     = null
  description = "Initial filesystem label for the block storage volume."
  type        = string
}

variable "initial_filesystem_type" {
  default     = null
  description = "Initial filesystem type (xfs or ext4) for the block storage volume."
  type        = string
}

variable "name" {
  description = "A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and "-", up to a limit of 64 characters."
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "The region that the block storage volume will be created in."
  type        = string
}

variable "size" {
  default     = 10
  description = "The size of the block storage volume in GiB. If updated, can only be expanded."
  type        = number
}

variable "snapshot_id" {
  default     = null
  description = "The ID of an existing volume snapshot from which the new volume will be created. If supplied, the region and size will be limitied on creation to that of the referenced snapshot."
  type        = string
}

variable "tags" {
  default     = []
  description = "A list of the tags to be applied to this Volume."
  type        = list(string)
}
