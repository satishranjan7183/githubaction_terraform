data "azurerm_network_interface" "datanic1" {
    for_each = var.vmmap
    name = each.value.nicname
    resource_group_name = each.value.resource_group_name
}