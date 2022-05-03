resource "azurerm_resource_group" "app" {
  name = "rg1"
  location = var.location
  tags = {
      environment = "prod"
      buildby = "lucky"
      code = "poc"  
   }
}

resource "azurerm_resource_group" "network" {
    name = "rg2"
    location = var.location
    tags = {
      environment = "prod"
      buildby = "lucky"
      code = "poc"
    }
  
}