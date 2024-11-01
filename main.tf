# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
   features {}
   subscription_id = "b98d2b8d-4039-4e94-a202-67c3a82a3ced"
   tenant_id = "17643a2b-8c04-48b3-89ef-d5149a115c30"
   client_id       = "101b290d-a2af-4288-8f6e-2d129d548042"
   client_secret   = "Ma68Q~bgfcU0M6BepLSaxSOmPO5sBro1UxThXcXP"
}


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}






