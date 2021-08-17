output "nic_id" {
  description = "The ID of the Network Interface."
  value       = azurerm_network_interface.az_nic.id
}

output "nic_mac_address" {
  description = "The Media Access Control (MAC) Address of the Network Interface."
  value       = azurerm_network_interface.az_nic.mac_address
}

output "nic_private_ip_address" {
  description = "The first private IP address of the network interface."
  value       = azurerm_network_interface.az_nic.private_ip_address
}

output "nic_private_ip_addresses" {
  description = "The private IP addresses of the network interface."
  value       = azurerm_network_interface.az_nic.private_ip_addresses
}