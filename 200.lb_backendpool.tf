resource "azurerm_lb_backend_address_pool" "user200-bpepool" {
resource_group_name= azurerm_resource_group.user200-rg.name
loadbalancer_id= azurerm_lb.user200-lb.id
name = "user200-BackEndAddressPool"
}
