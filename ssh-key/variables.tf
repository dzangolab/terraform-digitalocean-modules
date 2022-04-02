variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "keys" {
  description = "The keys to be created."
  type        = list(object({
    name = string,
    public_key = string
  })
}
