
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

# prefijo de la subnet
variable "subnet_prefix" {
  description = "The address prefix to use for the subnet."
  default     = ["172.16.0.0/24"]
}


# imagen del sistema operativo
variable "image_offer" {
  description = "Name of the offer (az vm image list)"
  default     = "UbuntuServer"
}

# sku 
variable "image_sku" {
  description = "Image SKU to apply "
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "Version of the image to apply (az vm image list)"
  default     = "latest"
}

variable "sku_name" {
  description = "nombre del sku"
  default = "P1v2"
}

variable "os_type" {
  description = "tipo de sistema operativo"
  default = "Windows"
}

variable "tags" {
    description = "tags de los recursos"
    default = {
        "CREATEDBY": "NAMELESS",
        "creadorDPT": "VENTAS",
        "AMBIENTE": "PRD"
    }  
}


