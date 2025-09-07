resource "azurerm_storage_container" "testsc" {
  name                  = var.sc_name
  storage_account_id    = data.azurerm_storage_account.sa_data.id
  container_access_type = "blob"
}
