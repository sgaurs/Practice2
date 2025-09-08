module "resource_group" {
  source = "../Azurerm_Resource_group"
  rg_name  = "NarrowRoad"
  location = "Central India"
}

module "storage_account" {
  source     = "../Azurerm_storage_account"
  depends_on = [module.resource_group]
  rg_name  = "NarrowRoad"
  sa_name = "narrowroad"
}

module "storage_container" {
  source     = "../Azurerm_storage_container"
  depends_on = [module.storage_account]
  rg_name  = "NarrowRoad"
  sa_name = "narrowroad"
  sc_name = "tfstate"
}
