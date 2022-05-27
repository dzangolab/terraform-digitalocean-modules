terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 1.22.2"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
  }
  required_version = ">= 0.13.0"
}
