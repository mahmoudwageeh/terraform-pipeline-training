# Define a variable for the Azure subscription ID
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  
}

# Define a variable for the Azure tenant ID
variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  
}

# Define a variable for the Azure client ID
variable "client_id" {
  description = "The Azure client ID"
  type        = string
  
}

# Define a variable for the Azure client secret
variable "client_secret" {
  description = "The Azure client secret"
  type        = string
  sensitive   = true
  
}

# Define a variable for the resource group name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  
}