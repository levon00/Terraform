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
  name                 = var.subnet_names[0]
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_prefixes[0]]
  resource_group_name  = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "sb1" {
  name                 = var.subnet_names[1]
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [var.subnet_prefixes[1]]
  resource_group_name  = azurerm_resource_group.rg.name
}