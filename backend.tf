terraform {
  backend "azurerm" {
    resource_group_name  = "Terraform-RG"
    storage_account_name = "Terraform-StorageAccount"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}