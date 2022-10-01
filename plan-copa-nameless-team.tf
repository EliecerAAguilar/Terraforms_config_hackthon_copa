terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create azure resource group
resource "azurerm_resource_group" "rg_nameless" {
  name     = var.resource_group_name
  location = var.location
  tags = merge(var.tags)
}

# crear app service plan
resource "azurerm_service_plan" "az_serv_plan_nameless" {
  name                = "nameless-az-serv-plan-nameless"
  resource_group_name = azurerm_resource_group.rg_nameless.name
  location            = azurerm_resource_group.rg_nameless.location
  sku_name            = var.sku_name
  os_type             = var.os_type
  tags = merge(var.tags)
}


# crea el web app con windows server
resource "azurerm_windows_web_app" "az_win_web_app_nameless" {
  name                = "nameless-web-app"
  resource_group_name = azurerm_resource_group.rg_nameless.name
  location            = azurerm_service_plan.az_serv_plan_nameless.location
  service_plan_id     = azurerm_service_plan.az_serv_plan_nameless.id

  site_config {

  }
  tags = merge(var.tags)
}