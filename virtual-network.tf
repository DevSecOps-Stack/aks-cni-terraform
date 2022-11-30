# Create Virtual Network
resource "azurerm_virtual_network" "prefix" {
  name                = "${var.prefix}-vnet"
  location            = azurerm_resource_group.prefix.location
  resource_group_name = azurerm_resource_group.prefix.name
  address_space       = ["10.0.0.0/8"]
}

# Create a Subnet for AKS
resource "azurerm_subnet" "prefix" {
  name                 = "${var.prefix}-subnet"
  virtual_network_name = azurerm_virtual_network.prefix.name
  resource_group_name  = azurerm_resource_group.prefix.name
  address_prefixes     = ["10.240.0.0/16"]
}