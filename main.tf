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

module "ResourceGroup" {
    source = "./ResourceGroup"
    resourcegroup = "myrg001"
    location = "west us"
    
}

module "ResourceGroup" {
    source = "./ResourceGroup"
    resourcegroup = ResourceGroup.resource_group.name
    location = "west us"
    storageaccountname = "testmystr88"
    
}