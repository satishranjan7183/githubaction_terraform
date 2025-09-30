resource "azurerm_storage_table" "table1" {
    for_each = var.strtablemap
    name = each.key
    storage_account_name = each.value.storage_account_name
}