variable "rg_name" {
  type        = string
  description = "resource group name"
}

variable "location" {
  type    = string
  default = "westeurope"
}

variable "vm_vnet_name" {
  type        = string
  description = "Virtual Network Name"
}

variable "vm_vnet_address_space" {
  type        = string
  description = "Virtual Network Addr"
}

variable "vm_subnet_name" {
  type = string
}

variable "vm_pubip_name" {
  type = string
}

variable "vm_nic_name" {
  type = string
}

variable "vm_name" {
  type        = string
  description = "vm name"
}

variable "vm_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "vm_admin_name" {
  type        = string
  default     = "azureuser"
  description = "Admin Username"
}

variable "vm_admin_password" {
  type = string
  description = "Admin Password"
  sensitive   = true
}

variable "vm_disk_size" {
  type        = number
  default     = 30
  description = "Disk Size in GB"
}

variable "nsg_open_ports" {
  type        = list(number)
  default     = [22]
  description = "list of open ports in network security group. e.g. [22]"
}

variable "tags" {
  type    = map(any)
  default = {}
}
