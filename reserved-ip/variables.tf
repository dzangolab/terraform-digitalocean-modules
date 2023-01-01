variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "droplet_id" {
  default     = null
  description = "The ID of Droplet that the reserved IPs will be assigned to."
  type        = string
}

variable "ip_count" {
  default     = 1
  description = "The number of reserved IPs to create"
  type        = number
}

variable "project_id" {
  default     = null
  description = "The id of the project to which the Floating IPs will be moved to."
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "The region that the Floating IP is reserved to."
  type        = string
}
