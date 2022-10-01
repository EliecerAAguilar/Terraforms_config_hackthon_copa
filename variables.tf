
# variable del nombre del resource group de azure
variable "resource_group_name" {
  description = "The name of your Azure Resource Group."
  default     = "RG-NAMELESS"
}

# nombre de extensiones
variable "prefix" {
  description = "This prefix will be included in the name of some resources."
  default     = "tf"
}

# ubicacion de los servidores
variable "location" {
  description = "The region where the virtual network is created."
  default     = "us-south-central"
}

# subnet virtual de los recursos
variable "virtual_network_name" {
  description = "The name for your virtual network."
  default     = "vnet-nameless"
}

# espacio de direcciones de la red virtual
variable "address_space" {
  description = "The address space that is used by the virtual network."
  default     = ["172.16.0.0/24"]
}