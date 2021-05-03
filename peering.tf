resource "azurerm_resource_group" "user20p-rg" {
  name     = "peeredvnets-rg"
  location = "koreacentral"
}

resource "azurerm_virtual_network" "user20p-rg-1" {
  name                = "peternetwork1"
  resource_group_name = azurerm_resource_group.user20p-rg.name
  address_space       = ["20.0.1.0/24"]
  location            = "koreacentral"
}

resource "azurerm_virtual_network" "user20p-rg-2" {
  name                = "peternetwork2"
  resource_group_name = azurerm_resource_group.user20p-rg.name
  address_space       = ["20.0.2.0/24"]
  location            = "koreacentral"
}

resource "azurerm_virtual_network_peering" "user20p-rg-1" {
  name                      = "peer1to2"
  resource_group_name       = azurerm_resource_group.user20p-rg.name
  virtual_network_name      = azurerm_virtual_network.user20p-rg-1.name
  remote_virtual_network_id = azurerm_virtual_network.user20p-rg-2.id
}

resource "azurerm_virtual_network_peering" "user20p-rg-2" {
  name                      = "peer2to1"
  resource_group_name       = azurerm_resource_group.user20p-rg.name
  virtual_network_name      = azurerm_virtual_network.user20p-rg-2.name
  remote_virtual_network_id = azurerm_virtual_network.user20p-rg-1.id
}
