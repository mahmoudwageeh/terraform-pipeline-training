# Define a variable for the Azure subscription ID
variable "subscription_id" {
  description = "The Azure subscription ID"
  type        = string
  default = ""
}
# Define a variable for the Azure tenant ID
variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
  default = ""
}

# Define a variable for the Azure client ID
variable "client_id" {
  description = "The Azure client ID"
  type        = string
  default = ""
}


# Define a variable for the Azure client secret
variable "client_secret" {
  description = "The Azure client secret"
  type        = string
  sensitive   = true
  default = ""
}

# Define a variable for the resource group name
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default = ""
}

variable "vnet_address_space_cidr" {
  description = "vnet address space cidr"
  type        = list(string)
  default     = ["10.0.0.0/22"]
}