# Define the Azure provider block with the necessary authentication details.
provider "azurerm" {
  tenant_id       = "58859c0e-7c0e-4f0f-8e14-d486621996a0"
  subscription_id = "fa2d7f79-dffa-4cbd-87bd-fef459768819"
#   client_id       = "xxxxx"
#   client_secret   = "xxxxx"
  features {}
}

# Define an Azure Resource Group
resource "azurerm_resource_group" "lokesh-1" {
  name     = "lokesh-1-resources"
  location = "East US"
}

# Define an Azure Storage Account
resource "azurerm_storage_account" "lokesh-1" {
  name                     = "lokeshaccount"
  resource_group_name      = azurerm_resource_group.lokesh-1.name
  location                 = azurerm_resource_group.lokesh-1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Define an Azure Storage Container within the Storage Account
resource "azurerm_storage_container" "lokesh-1" {
  name                  = "lokesh-1container"
  storage_account_name  = azurerm_storage_account.lokesh-1.name
  container_access_type = "private"
}
