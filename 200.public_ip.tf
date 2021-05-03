resource "azurerm_public_ip" "user200-publicip" {
	name = "mypublicIP"
	location = azurerm_resource_group.user200-rg.location
	resource_group_name= azurerm_resource_group.user200-rg.name
	allocation_method= "Static"
	domain_name_label= azurerm_resource_group.user200-rg.name

## 동일Region에추가Public IP 생성시에는아래내용수정(위설정했으면아래는#처리)
#domain_name_label   = "user200pubiip2.westus.cloudapp.azure.com"
	
	tags = { 
		environment = "staging"
	}
}
