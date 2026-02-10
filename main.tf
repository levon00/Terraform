provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  resource_group_name      = azurerm_resource_group.rg.name
  tags                     = var.tags
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.Vnet_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.Vnet_address
  tags                = var.tags
}

resource "azurerm_subnet" "sb" {
  for_each             = var.subnets
  name                 = each.key
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value.subnets_prefixes]
  resource_group_name  = azurerm_resource_group.rg.name
}