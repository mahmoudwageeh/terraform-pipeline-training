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
   subscription_id = yamldecode(file("https://github.com/mahmoudwageeh/terraform-pipeline-training/blob/main/azure-pipelines.yml"))["subscription_id"]
   tenant_id = yamldecode(file("https://github.com/mahmoudwageeh/terraform-pipeline-training/blob/main/azure-pipelines.yml"))["tenant_id"]
   client_id = yamldecode(file("https://github.com/mahmoudwageeh/terraform-pipeline-training/blob/main/azure-pipelines.yml"))["client_id"]
   client_secret = yamldecode(file("https://github.com/mahmoudwageeh/terraform-pipeline-training/blob/main/azure-pipelines.yml"))["client_secret"]
}


# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "Terraform_RG"
  location = "West Europe"
}