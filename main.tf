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
}

resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroupname
  location = var.location
}

module "StorageAccount" {
    source = "./StorageAccount"
    resourcegroup = "myrg001"
    location = "west us"
    storageaccountname = "testuserstorage5544"
}