locals {
  common_tags = {
    "ManagedBy"   = "Terraform"
    "Owner"       = "TodoAppTeam"
    "Environment" = "dev"
  }
}


module "rg" {
  source      = "../../module/rg_1"
  rg_name     = "rg-dev-todoapp-01"
  rg_location = "centralindia"
  rg_tags     = local.common_tags
}




