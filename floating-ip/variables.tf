variable "droplet_id" {
  description = "(Optional) The ID of Droplet that the Floating IP will be assigned to."
}

variable "region" {
  default     = "sgp1"
  description = "(Required) The region that the Floating IP is reserved to."
}
