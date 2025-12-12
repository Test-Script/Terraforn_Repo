variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "prefix" {
  description = "Name prefix for resources"
  type        = string
  default     = "Test-RG"
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
