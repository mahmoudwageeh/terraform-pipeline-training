# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Terraform-RG"
    storage_account_name = "terraformsa94"
    container_name       = "tfstate"
    key                  = "test.terraform.tfstate"
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

resource "azurerm_resource_group" "example" {
  name     = "Terraform-RG2"
  location = "West Europe"
}

resource "azurerm_resource_group" "example2" {
  name     = "Terraform-RG3"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "Terraform-vnet"
  location            = "West Europe"
  resource_group_name = "Terraform-RG"
  address_space       = var.vnet_address_space_cidr
}