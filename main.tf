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
   subscription_id = yamldecode(file("azure-pipelines.yaml"))["subscription_id"]
   tenant_id = yamldecode(file("azure-pipelines.yaml"))["tenant_id"]
   client_id = yamldecode(file("azure-pipelines.yaml"))["client_id"]
   client_secret = yamldecode(file("azure-pipelines.yaml"))["client_secret"]
}


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "Terraform_RG"
  location = "West Europe"
}