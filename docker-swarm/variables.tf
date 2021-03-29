variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "manager_count" {
  default     = 1
  description = "The number of manager nodes to provision."
}

variable "manager_image" {
  default     = "docker-20-04"
  description = "The droplet image ID or slug for manager nodes."
}

variable "manager_name" {
  default = "manager"
  description = "The name for manager nodes"
  type        = string
}

variable "manager_size" {
  default     = "s-1vcpu-2gb"
  description = "Size of the manager nodes"
  type        = string
}

variable "monitoring" {
  default     = true
  description = "Enable monitoring on droplet"
  type        = bool
}

variable "project_id" {
  description = "The ID of the project to which the droplet is assigned"
  type        = string
}

variable "region" {
  default     = "sgp1"
  description = "The region to start in."
  type        = string
}

variable "ssh_keys" {
  description = "A list of SSH key names to enable on droplet"
  type        = list(string)
}

variable "username" {
  description = "Username of the user to be created on the droplet"
  type        = string
}

variable "vpc_id" {
  default     = null
  description = "The ID of the VPC where the droplet will be located."
  type        = string
}

variable "worker_count" {
  default     = 0
  description = "The number of worker nodes to provision."
}

variable "worker_image" {
  default     = "docker-20-04"
  description = "The droplet image ID or slug for worker nodes."
}

variable "worker_name" {
  default = "worker"
  description = "The name for worker nodes"
  type        = string
}

variable "worker_size" {
  default     = "s-1vcpu-2gb"
  description = "Size of the worker nodes"
  type        = string
}
