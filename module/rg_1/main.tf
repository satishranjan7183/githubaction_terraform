resource "azurerm_resource_group" "rg1" {
    for_each = var.rgmap
    name = each.key
    location = each.value
}
