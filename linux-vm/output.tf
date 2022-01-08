output "linux-vm_rg_name" {
  value = azurerm_linux_virtual_machine.this.resource_group_name
}

output "linux-vm_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "network_interface_name" {
  value = azurerm_network_interface.this.name
}

output "os_disk_name" {
  value = azurerm_linux_virtual_machine.this.os_disk[0].name
}

output "subnet_id" {
  value = azurerm_network_interface.this.ip_configuration[0].subnet_id
}

output "vnet_name" {
  value = azurerm_virtual_network.this.name
}

output "admin_username" {
  value = azurerm_linux_virtual_machine.this.admin_username
}

output "nsg_rules" {
  value = [for x in azurerm_network_security_group.this.*
  : "${x.security_rule.*.name[0]} ${x.security_rule.*.direction[0]} ${x.security_rule.*.destination_port_range[0]}"]
}

output "nsg_name" {
  value = azurerm_network_security_group.this.name
}