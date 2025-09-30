resource "azurerm_storage_queue" "queue1" {
    for_each = var.strqueuemap
    name = each.key
    storage_account_name = each.value.storage_account_name
}