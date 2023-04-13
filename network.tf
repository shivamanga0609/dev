resource "azurerm_virtual_network" "dev_vnet" {
  name                = var.virtual_network_name
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.dev_rg.name   #data.azurerm_resource_group.resource-group.name  #azurerm_resource_group.network-rg.name
  location            = var.resource_group_location
}

resource "azurerm_subnet" "dev_subnet" {
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.dev_vnet.name
  resource_group_name  = azurerm_resource_group.dev_rg.name    #data.azurerm_resource_group.resource-group.name  #azurerm_resource_group.network-rg.name
  address_prefixes     = ["10.0.1.0/24"]
  service_endpoints = ["Microsoft.Storage"]
}

resource "azurerm_network_interface" "dev_nic" {
  name                = var.network_interface_name
  location            = azurerm_resource_group.dev_rg.location
  resource_group_name = azurerm_resource_group.dev_rg.name
#  virtual_machine_name= var.azurerm_virtual_machine.dev_vm.name


  # ip_configuration {
  #   name                          = "internal"
  #   subnet_id                     = azurerm_subnet.reval-sn.id
  #   private_ip_address_allocation = "Dynamic"
  # }
  ip_configuration {
    name                          = "dev_nic_configuration"
   subnet_id                      = azurerm_subnet.dev_subnet.id
    private_ip_address_allocation = "Dynamic"
#    public_ip_address_id          = azurerm_public_ip.dev_public_ip.id
  }
}