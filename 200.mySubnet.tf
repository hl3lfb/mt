resource "azurerm_subnet" "user200-subnet1" {
	name = "user200-mysubnet1"
	resource_group_name= azurerm_resource_group.user200-rg.name
	virtual_network_name= azurerm_virtual_network.user200-vnet.name
	address_prefixes= ["200.0.1.0/24"]
}
