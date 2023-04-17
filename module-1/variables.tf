variable resource_group_name {
    default         = "dev_resourgroup"
    description     = "Name  of the resource group"
}

variable network_interface_name {
    default         = "dev_nic"
    description     = "Network interface name"
}

variable subnet_name {
    default        = "dev_subnet"
    description    = "Name of the subnet"
}

variable virtual_network_name {
    default        = "dev_vnet"
    description    = "Vnet name for dev"
}

variable resource_group_location {
    default         = "East US"
    description     = "Name of the resource group location"
}

variable virtual_machine_name {
    default          = "dev_virtualmachine"
    description      = "Name of the virtual machine "
}

variable storage_account_name {
    default          =  "devstorageshiva"
    description      = "Name of the storage account"
}

variable "availability_set_name" {
    default          = "dev_av"
    description      = "POName of the availabiity set"
}
