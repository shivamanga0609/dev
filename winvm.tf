resource "azurerm_virtual_machine" "dev_vm" {
    name                = var.virtual_machine_name
    location            = azurerm_resource_group.dev_rg.location
    resource_group_name = azurerm_resource_group.dev_rg.name
    availability_set_id = azurerm_availability_set.dev_av.id
    network_interface_ids = [
    azurerm_network_interface.dev_nic.id,
  ]
    vm_size             = "Standard_B1s"

    storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "azureuser123"
    admin_password = "Password12345!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "dev"
  }
}