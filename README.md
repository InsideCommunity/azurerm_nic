# Azurerm_nic

Deploy Azure Network Interface with a dedicated Terraform module.

## Requirements

* A Resource Group
* A Virtual Network
* A Subnet
* A public IP*

(*) If required only

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.az_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | A list of IP Addresses defining the DNS Servers which should be used for this Network Interface. | `any` | `null` | no |
| <a name="input_enable_accelerated_networking"></a> [enable\_accelerated\_networking](#input\_enable\_accelerated\_networking) | Enable accelerated networking | `bool` | `false` | no |
| <a name="input_enable_ip_forwarding"></a> [enable\_ip\_forwarding](#input\_enable\_ip\_forwarding) | Enable IP Forwarding | `bool` | `false` | no |
| <a name="input_internal_dns_name_label"></a> [internal\_dns\_name\_label](#input\_internal\_dns\_name\_label) | The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network. | `string` | `null` | no |
| <a name="input_ip_configuration_name"></a> [ip\_configuration\_name](#input\_ip\_configuration\_name) | A name used for this IP Configuration. | `string` | `"default_ip"` | no |
| <a name="input_location"></a> [location](#input\_location) | Network interface resource Location | `string` | n/a | yes |
| <a name="input_network_interface_name"></a> [network\_interface\_name](#input\_network\_interface\_name) | Network interface name | `string` | n/a | yes |
| <a name="input_private_ip_address"></a> [private\_ip\_address](#input\_private\_ip\_address) | The Static IP Address which should be used. | `any` | `null` | no |
| <a name="input_private_ip_address_allocation"></a> [private\_ip\_address\_allocation](#input\_private\_ip\_address\_allocation) | The allocation method used for the Private IP Address. | `string` | `"Dynamic"` | no |
| <a name="input_private_ip_address_version"></a> [private\_ip\_address\_version](#input\_private\_ip\_address\_version) | The IP Version to use | `string` | `"IPv4"` | no |
| <a name="input_public_ip_address_id"></a> [public\_ip\_address\_id](#input\_public\_ip\_address\_id) | Reference to a Public IP Address to associate with this NIC. | `string` | `null` | no |
| <a name="input_required_secondary_ip_configuration"></a> [required\_secondary\_ip\_configuration](#input\_required\_secondary\_ip\_configuration) | Declare secondary ip configuration for network interface. Not yet Available | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | Network interface resource group name | `string` | n/a | yes |
| <a name="input_secondary_ip_configuration_name"></a> [secondary\_ip\_configuration\_name](#input\_secondary\_ip\_configuration\_name) | A name used for this IP Configuration. Not yet Available | `bool` | `false` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the Subnet where this Network Interface should be located in. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nic_id"></a> [nic\_id](#output\_nic\_id) | The ID of the Network Interface. |
| <a name="output_nic_mac_address"></a> [nic\_mac\_address](#output\_nic\_mac\_address) | The Media Access Control (MAC) Address of the Network Interface. |
| <a name="output_nic_private_ip_address"></a> [nic\_private\_ip\_address](#output\_nic\_private\_ip\_address) | The first private IP address of the network interface. |
| <a name="output_nic_private_ip_addresses"></a> [nic\_private\_ip\_addresses](#output\_nic\_private\_ip\_addresses) | The private IP addresses of the network interface. |
