resource "azurerm_virtual_network" "vnet" {
    name = "vnet1"
    location = var.location
    resource_group_name = azurerm_resource_group.network.name
    address_space = [ "10.0.0.0/16" ]
    tags = {
      environment = "prod"
      buildby = "lucky"
      code = "poc"
    }
  
}