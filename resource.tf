resource "azurerm_resource_group" "user20-rg" {
    name     = "user20resourcegroup"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
