resource "azurerm_lb_rule" "lbrule200" {
    resource_group_name = azurerm_resource_group.user200-rg.name
    loadbalancer_id = azurerm_lb.user200-lb.id
    name = "http"
    protocol = "Tcp"
    frontend_port = 80
    backend_port = 80
    backend_address_pool_id = azurerm_lb_backend_address_pool.user200-bpepool.id
    frontend_ip_configuration_name = "user200PublicIPAddress"
    probe_id = azurerm_lb_probe.user200-lb-probe.id
}
