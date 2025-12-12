variable "prefix" {
  description = "Name prefix for resources"
  type        = string
  default     = "demo"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "demo-rg"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "eastus"
}
