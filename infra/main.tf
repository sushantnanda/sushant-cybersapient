provider "azurerm" {
  features {}
  subscription_id = "d69c2e27-a7d9-416d-be54-3c556d1d191e"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-task"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-devops-task"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "devopstask"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_key_vault" "kv" {
  name                = "kv-devopstask"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

  secret_permissions = [
  "Get", "List", "Set"
]
  }
}

data "azurerm_client_config" "current" {}

