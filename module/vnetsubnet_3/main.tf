resource "azurerm_subnet" "subnet1" {
    for_each = var.subnetmap
    name = each.key
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes = each.value.address_prefixes
}