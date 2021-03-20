variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "droplet_id" {
  default     = null
  description = "(Optional) The ID of Droplet that the Floating IP will be assigned to."
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "(Required) The region that the Floating IP is reserved to."
  type        = string
}
