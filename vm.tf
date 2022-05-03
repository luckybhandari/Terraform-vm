resource "azurerm_windows_virtual_machine" "vm" {
    name     =  "node1"
    location = var.location
    resource_group_name = azurerm_resource_group.app.name
    network_interface_ids = [azurerm_network_interface.nic.id]
    size = "Standard_DS1"
    admin_password = "sssss"
    admin_username = "sssss"


    source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
    }
  
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }


tags = {
  environment = "prod"
  buildby = "lucky"
  code = "poc"
}

}