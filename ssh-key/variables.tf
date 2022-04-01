variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "name" {
  description = "The name of the SSH key for identification."
  type        = string
}

variable "public_key" {
  description = "The public key. If this is a file, it can be read using the file interpolation function."
  type        = string
}
