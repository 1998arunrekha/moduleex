resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroupname
  location = var.location
}

resource "azurerm_storage_account" "newstorage6622" {
  name                     = var.storageaccountname
  resource_group_name      = var.resourcegroup
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}