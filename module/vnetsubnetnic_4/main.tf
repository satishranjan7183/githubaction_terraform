resource "azurerm_network_interface" "nic1" {
    for_each = var.nicmap
    name = each.key
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    
  ip_configuration {
    name = "internal"
    subnet_id = data.azurerm_subnet.datasubnet1[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}