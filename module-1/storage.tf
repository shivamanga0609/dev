# Create Storage Account

resource "azurerm_storage_account" "devstorage" {
#resource "azurerm_storage_account" "devstorage" {
  name                = var.storage_account_name
  resource_group_name = azurerm_resource_group.dev_rg.name  #azurerm_resource_group.network-rg.name
  location            = azurerm_resource_group.dev_rg.location

  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

    network_rules {
        bypass = ["Logging", "Metrics", "AzureServices"]
        default_action = "Deny"
#        virtual_network_subnet_ids = [azurerm_subnet.reval-sn.id]
    }
    
    depends_on = [
	azurerm_virtual_network.dev_vnet,
#	azurerm_subnet.reval-sn
  ]
}
