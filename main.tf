terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  cloud {
#    organization = "CloudQuickLabs"
    organization = "satishranjan7183"
    workspaces {
#      name = "AzureLabs"
      name = "azurelab"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "38d52de4-2fb6-4a85-96fb-5ba22d363e4e"
}
