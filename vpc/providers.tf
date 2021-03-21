terraform {
  required_providers {
    digitalocean = {
      source  = "hashicorp/digitalocean"
      version = ">= 1.22.2"
    }
  }
  required_version = ">= 0.13.0"
}
