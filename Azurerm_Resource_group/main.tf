resource "azurerm_resource_group" "testrg" {
  name     = var.rg_name
  location = var.location
}
