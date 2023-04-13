output "resource_gruoup_name" {
    value = azurerm_resource_group.dev_rg.name
}

output "virtual_machine_name" {
    value  = azurerm_virtual_machine.dev_vm.name
}

output "storage_account_name"{
    value = azurerm_storage_account.devstorage.name
}

output "availability_set_name" {
    value = azurerm_availability_set.dev_av.name
}
