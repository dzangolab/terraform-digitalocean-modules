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
  description = "The inbound and outbound access rule block for the Firewall."
  type = list
}

variable "name" {
  description = "The Firewall name."
  type        = string
}

variable "outbound_rules" {
  description = "The inbound and outbound access rule block for the Firewall."
  type = list
}

variable "tags" {
  default     = []
  description = "The names of the Tags assigned to the Firewall."
  type        = list(string)
}
