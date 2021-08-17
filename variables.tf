variable "network_interface_name" {
  description = "Network interface name"
  type        = string
}

variable "location" {
  description = "Network interface resource Location"
  type        = string
}

variable "resource_group_name" {
  description = "Network interface resource group name"
  type        = string
}

variable "dns_servers" {
  description = "A list of IP Addresses defining the DNS Servers which should be used for this Network Interface."
  default     = null
}

variable "enable_ip_forwarding" {
  description = "Enable IP Forwarding"
  type        = bool
  default     = false
}

variable "enable_accelerated_networking" {
  description = "Enable accelerated networking"
  type        = bool
  default     = false
}


variable "internal_dns_name_label" {
  description = "The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

variable "ip_configuration_name" {
  description = "A name used for this IP Configuration."
  type        = string
  default     = "default_ip"
}

variable "subnet_id" {
  description = "The ID of the Subnet where this Network Interface should be located in."
  type        = string
  default     = null
}

variable "private_ip_address_allocation" {
  description = "The allocation method used for the Private IP Address."
  type        = string
  default     = "Dynamic"
  validation {
    condition     = contains(["Static", "Dynamic"], var.private_ip_address_allocation)
    error_message = "Private IP address allocation can be only \"Static\" or \"Dynamic\"."
  }
}

variable "private_ip_address_version" {
  description = "The IP Version to use"
  type        = string
  default     = "IPv4"
  validation {
    condition     = contains(["IPv4", "IPv6"], var.private_ip_address_version)
    error_message = "Private IP address version can be only \"IPv4\" or \"IPv6\"."
  }
}

variable "required_secondary_ip_configuration" {
  description = "Declare secondary ip configuration for network interface. Not yet Available"
  type        = bool
  default     = false
}

variable "secondary_ip_configuration_name" {
  description = "A name used for this IP Configuration. Not yet Available"
  type        = bool
  default     = false
}

variable "public_ip_address_id" {
  description = "Reference to a Public IP Address to associate with this NIC."
  type        = string
  default     = null
}

variable "private_ip_address" {
  description = "The Static IP Address which should be used."
  default     = null
}


