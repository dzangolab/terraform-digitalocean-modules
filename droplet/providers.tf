terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 1.22.2"
    }
    local = {
      source  = "hashicorp/local"
      version = "~> 1.4.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~> 2.1.2"
    }
  }
  required_version = ">= 0.13.0"
}
