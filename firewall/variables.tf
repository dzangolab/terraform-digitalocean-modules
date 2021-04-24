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
  default = [
    {
      port_range                = ""
      protocol                  = ""
      source_addresses          = []
      source_droplet_ids        = []
      source_load_balancer_uids = []
      source_tags               = []
    }
  ]
  description = "The inbound and outbound access rule block for the Firewall."
  type = list(object({
    port_range                = ""
    protocol                  = ""
    source_addresses          = []
    source_droplet_ids        = []
    source_load_balancer_uids = []
    source_tags               = []
  }))
}

variable "name" {
  description = "The Firewall name."
  type        = string
}

variable "outbound_rules" {
  description = "The inbound and outbound access rule block for the Firewall."
  type = list(object({
    destination_addresses          = list(string)
    destination_droplet_ids        = list(string)
    destination_load_balancer_uids = list(string)
    destination_tags               = list(string)
    port_range                     = string
    protocol                       = string
  }))
}

variable "tags" {
  default     = []
  description = "The names of the Tags assigned to the Firewall."
  type        = list(string)
}
