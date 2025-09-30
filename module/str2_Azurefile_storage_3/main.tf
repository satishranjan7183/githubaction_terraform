resource "azurerm_storage_share" "strfile1" {
    for_each = var.strfilemap
    name = each.key
    storage_account_name = each.value.storage_account_name
    quota = each.value.quota
}