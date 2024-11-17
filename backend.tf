#
#terraform {
#  backend "azurerm" {
#    resource_group_name  = "Terraform-RG"
#    storage_account_name = "terraformsa94"
#    container_name       = "tfstate"
#    key                  = "test.terraform.tfstate"
#  }
#}