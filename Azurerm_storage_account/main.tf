resource "azurerm_storage_account" "testsa" {
  name                     = var.sa_name
  resource_group_name      = data.azurerm_resource_group.rgdata.name
  location                 = data.azurerm_resource_group.rgdata.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}