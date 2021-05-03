resource "azurerm_lb" "user200-lb" {
	name = "user200lb"
	location = azurerm_resource_group.user200-rg.location
	resource_group_name= azurerm_resource_group.user200-rg.name

frontend_ip_configuration{
	name = "user200PublicIPAddress"
	public_ip_address_id= azurerm_public_ip.user200-publicip.id
	}
}
