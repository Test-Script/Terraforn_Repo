variable "prefix" {
  description = "Name prefix for resources"
  type        = string
  default     = "Test-RG"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "Test-RG"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}

