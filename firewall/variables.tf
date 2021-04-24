variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "droplet_ids" {
  default     = []
  description = "The list of the IDs of the Droplets assigned to the Firewall."
  type        = list(string)
}

variable "inbound_rules" {
  default = []
  description = "The inbound access rule block for the Firewall."
  type = list(object)
}

variable "name" {
  description = "The Firewall name."
  type        = string
}

variable "tags" {
  default     = []
  description = "The names of the Tags assigned to the Firewall."
  type        = list(string)
}
