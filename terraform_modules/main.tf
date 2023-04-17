#terraform {
#  required_providers {
#    azurerm = {
#        source = "hashicorp/azurerm"
#        version = "=3.0.0"
#    }
#  }
#}

provider "azurerm" {
  features {}
}

module "dev_vm" {
    source = ".//module-1"
}

module "dev1_vm" {
    source = ".//module-2"
}
