variable "subscription_id" {
  description = "The subscription ID"
  type        = string
  default     = "d424d9db-5b1e-45f0-b066-0b0c7f98a00d"
}

variable "location" {
  type        = string
  default     = "West Europe"
  description = "The location/region where the hub is being deployed"
}
variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default     = "DEV-Workarea-Platform-Engineering"
}

