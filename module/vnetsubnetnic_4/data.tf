data "azurerm_subnet" "datasubnet1" {
    for_each = var.nicmap
    name = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}