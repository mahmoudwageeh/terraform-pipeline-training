# Define a variable for the Azure subscription ID
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default = "b98d2b8d-4039-4e94-a202-67c3a82a3ced"
}

# Define a variable for the Azure tenant ID
variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  default = "17643a2b-8c04-48b3-89ef-d5149a115c30"
}

# Define a variable for the Azure client ID
variable "client_id" {
  description = "The Azure client ID"
  type        = string
  default = "101b290d-a2af-4288-8f6e-2d129d548042"
}

# Define a variable for the Azure client secret
variable "client_secret" {
  description = "The Azure client secret"
  type        = string
  sensitive   = true
  default = "Ma68Q~bgfcU0M6BepLSaxSOmPO5sBro1UxThXcXP"
}

# Define a variable for the resource group name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "created from terraform"
}