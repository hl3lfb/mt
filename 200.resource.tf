resource "azurerm_resource_group" "user200-rg" {
    name     = "user200resourcegroup"
    location = "koreacentral"

    tags = {
        environment = "Terraform Demo"
    }
}
