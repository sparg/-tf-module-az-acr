variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The location where the container registry will be created."
  type        = string
}

variable "sku" {
  description = "The SKU of the container registry."
  type        = string
}

variable "admin_enabled" {
  description = "Enable admin user for the container registry."
  type        = bool
}

variable "environment" {
  description = "The environment for the container registry."
  type        = string
}
