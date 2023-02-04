terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "=3.37.0"
        }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "resource_group" {
    name = "csc8110"
    location = "ukwest"
}

resource "azurerm_kubernetes_cluster" "cluster" {
    name = "csc8110"
    location = azurerm_resource_group.resource_group.location
    resource_group_name = azurerm_resource_group.resource_group.name
    dns_prefix = "csc8110"

    default_node_pool {
        name = "default"
        node_count = "1"
        vm_size = "Standard_B2s"
    }

    identity {
        type = "SystemAssigned"
    }
}