terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }

  }
backend "azurerm" {
  resource_group_name   = "rg-sat"
  storage_account_name  = "twostate"
  container_name        = "tfstate"
  key                   = "dev.tfstate"
}
}
provider "azurerm" {
  features {}
  subscription_id = "38d52de4-2fb6-4a85-96fb-5ba22d363e4e"
}

