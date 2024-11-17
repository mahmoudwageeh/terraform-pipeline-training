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
   subscription_id = var.subscription_id
   tenant_id = var.tenant_id
   client_id = var.client_id
   client_secret = var.client_secret
}

resource "random_id" "rg_id" {
  byte_length = 4
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "Terraform-RG"
  location = "West Europe"
}

resource "azurerm_storage_account" "example" {
  name                     = "Terraform-StorageAccount"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}