variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "droplet_ids" {
  default     = []
  description = "The list of the IDs of the Droplets assigned to the Firewall."
  type        = array(string)
}

variable "name" {
  description = "The Firewall name."
  type        = string
}

variable "tags" {
  default     = []
  description = "The names of the Tags assigned to the Firewall."
  type        = array(string)
}
