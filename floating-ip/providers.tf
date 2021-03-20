terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 1.22.2"
    }
  }
  required_version = ">= 0.13.0"
}

provider "digitalocean" {
  token = var.digitalocean_token
}
