variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "description" {
  default     = null
  description = "A free-form text field up to a limit of 255 characters to describe the VPC."
  type        = string
}

variable "ip_range" {
  default     = null
  description = "The range of IP addresses for the VPC in CIDR notation. Network ranges cannot overlap with other networks in the same account and must be in range of private addresses as defined in RFC1918. It may not be larger than /16 or smaller than /24."
  type        = string
}

variable "name" {
  description = "A name for the VPC. Must be unique and contain alphanumeric characters, dashes, and periods only."
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "The region that the Floating IP is reserved to."
  type        = string
}
