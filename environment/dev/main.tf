locals {
  common_tags = {
    "ManagedBy"   = "Terraform"
    "Owner"       = "TodoAppTeam"
    "Environment" = "dev"
  }
}


module "rg" {
  source      = "../../modules/azurerm_resource_group"
  rg_name     = "rg-dev-todoapp-01"
  rg_location = "centralindia"
  rg_tags     = local.common_tags
}



