resource "azurerm_availability_set" "dev_av" {
    name                = var.availability_set_name
    location            = azurerm_resource_group.dev_rg.location
    resource_group_name = azurerm_resource_group.dev_rg.name
    
      platform_fault_domain_count = 2
      platform_update_domain_count = 5

    tags = {
        environment = "dev"
    }
}
