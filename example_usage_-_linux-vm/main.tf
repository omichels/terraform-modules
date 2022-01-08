provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "rg" {
  name     = "linux${var.postfix}"
  location = "westeurope"
}

module "linux-vm" {
  pipeline-source = "git::https://github.com/omichels/terraform-modules/linux-vm"

  location              = "westeurope"
  rg_name               = azurerm_resource_group.rg.name
  vm_vnet_name          = "vnet-eng01-test"
  vm_vnet_address_space = "10.10.10.10/26"
  vm_subnet_name        = "subnet01"
  vm_pubip_name         = "debian01-pubIP"
  vm_nic_name           = "debian01-nic01"
  vm_name               = "debian01"
  vm_admin_name         = "azureuser"
  vm_admin_password     = "4-v3ry-53cr37-P455w0rd"
  vm_disk_size          = "30"
  nsg_open_ports        = [22, 8080]
}