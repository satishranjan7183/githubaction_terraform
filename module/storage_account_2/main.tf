variable "strmap" {
    type = map(any)
}
resource "azurerm_storage_account" "str1" {
  for_each = var.strmap
  name = each.key
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  account_tier = "Standard"
  account_replication_type = "LRS"
}