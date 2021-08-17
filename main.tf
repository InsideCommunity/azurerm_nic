locals {
  secondary_configuration = var.required_secondary_ip_configuration == true ? { dummy_create = true } : {}
}

resource "azurerm_network_interface" "az_nic" {
  name                          = var.network_interface_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  dns_servers                   = var.dns_servers
  enable_ip_forwarding          = var.enable_ip_forwarding
  enable_accelerated_networking = var.enable_accelerated_networking
  internal_dns_name_label       = var.internal_dns_name_label
  tags                          = var.tags

  ip_configuration {
    primary                       = true
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    private_ip_address_version    = var.private_ip_address_version
    public_ip_address_id          = var.public_ip_address_id
    private_ip_address            = var.private_ip_address
  }

  dynamic "ip_configuration" {
    for_each = local.secondary_configuration
    content {
      # TBD configuration for secondary ip configuration
      name = var.secondary_ip_configuration_name
      #subnet_id                     = var.subnet_id
      #private_ip_address_allocation = var.private_ip_address_allocation
      #private_ip_address_version    = var.private_ip_address_version
      #public_ip_address_id          = var.public_ip_address_id
      #private_ip_address            = var.private_ip_address
    }
  }
}