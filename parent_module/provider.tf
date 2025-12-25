terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
}
terraform {
  backend "azurerm" {
    resource_group_name  = "rcajadG"
    storage_account_name = "rcajadsa"
    container_name       = "ajad"
    key                  = "ajad321.tf"
  }
  }


provider "azurerm" {
  features {}
  subscription_id = "b778603a-3250-439d-b905-afa38e002def"
  tenant_id       = "d6907568-5a32-4f6b-8b1d-1012a87ceae4"
  
}