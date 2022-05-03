resource "azurerm_network_interface" "nic" {
    
    name ="vnet01"
    location = var.location
    resource_group_name = azurerm_resource_group.app.name

ip_configuration{
    name = "ipconfig1"
    subnet_id = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
    
}
tags= {
    environment = "prod"
    buildby = "lucky"
    code = "poc"
      }

}