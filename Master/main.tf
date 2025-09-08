module "resource_group" {
  source = "../Azurerm_Resource_group"
  rg_name  = "B17_G3_TEST"
  location = "Central India"
}

module "storage_account" {
  source     = "../Azurerm_storage_account"
  depends_on = [module.resource_group]
  rg_name  = "B17_G3_TEST"
  sa_name = "abhistorage1"
}

module "storage_container" {
  source     = "../Azurerm_storage_container"
  depends_on = [module.storage_account]
  rg_name  = "B17_G3_TEST"
  sa_name = "abhistorage1"
  sc_name = "tfstate"
}

#