resource "azurerm_public_ip" "pip1" {
    for_each = var.pipmap
    name = each.key
    location = each.value.location
    resource_group_name = each.value.resource_group_name
  allocation_method = "Static"
  sku = "Standard"
}