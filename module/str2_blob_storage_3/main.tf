resource "azurerm_storage_container" "blob1" {
    for_each = var.strblobmap
    name = each.key
    storage_account_name = each.value.storage_account_name
    container_access_type = "private"
}