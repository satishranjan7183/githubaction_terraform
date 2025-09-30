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
  client_id       = "f72f924c-5aa6-4e12-936d-2890cea66164"
  client_secret   = "Ik_8Q~BB57TJW8GMMbc2ExwfaN_DUb2NuS5qRcNf"
  tenant_id       = "8839fa1a-72d2-4f19-8736-4c73cf13d7a6"
}

variable "rg_name" {
  description = "Name of the Resource Group"
  type        = string
  default     = "MyResourceGroup"
}

variable "location" {
  description = "Azure region for the Resource Group"
  type        = string
  default     = "EastUS"
}
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  tags = {
    Environment = "Dev"
    Owner       = "Satish"
  }
}
