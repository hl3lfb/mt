resource "azurerm_virtual_network" "user200-vnet" {
	name = "user200-myVnet"
	address_space = ["200.0.0.0/16"]
	location = azurerm_resource_group.user200-rg.location
	resource_group_name= azurerm_resource_group.user200-rg.name
}
