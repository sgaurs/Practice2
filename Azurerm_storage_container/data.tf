data "azurerm_storage_account" "sa_data" {
  name                = var.sa_name
  resource_group_name = var.rg_name
}