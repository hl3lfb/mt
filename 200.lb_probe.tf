resource "azurerm_lb_probe" "user200-lb-probe" {
    resource_group_name = azurerm_resource_group.user200-rg.name
    loadbalancer_id = azurerm_lb.user200-lb.id
    name = "http-probe"
    protocol = "Http"
    request_path = "/"
    port = 80
}
