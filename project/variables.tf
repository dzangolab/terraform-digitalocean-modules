variable "digitalocean_token" {
  description = "Digital Ocean token"
  type        = string
}

variable "description" {
  default     = null
  description = "The description of the project"
  type        = string
}

variable "environment" {
  default     = null
  description = "The environment of the project's resources. The possible values are: Development, Staging, Production)"
  type        = string
}

variable "name" {
  description = "A name for the block storage volume. Must be lowercase and be composed only of numbers, letters and \" - \", up to a limit of 64 characters."
  type        = string
}

variable "purpose" {
  default     = null
  description = "The purpose of the project, (Default: \"Web Application\")"
  type        = string
}

variable "resources" {
  default     = []
  description = "A list of uniform resource names (URNs) for the resources associated with the project"
  type        = list(string)
}
