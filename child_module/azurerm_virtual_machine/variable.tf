
variable "nic_name" {
  description = "Name of the frontend VM NIC"
  type        = string

}
variable "location" {
  description = "Location where the resources will be created"
  type        = string

}
variable "resource_group_name" {
  description = "Name of the resource group where the VM will be created"
  type        = string

}
variable "vm_name" {
  description = "Name of the frontend virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string


}
variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string

}
variable "admin_password" {
  description = "Admin password for the virtual machine"
  type        = string

}
variable "image_publisher" {
  description = "Publisher of the image to be used for the virtual machine"
  type        = string

}

variable "image_offer" {
  description = "Offer of the image to be used for the virtual machine"
  type        = string

}
variable "image_sku" {
  description = "SKU of the image to be used for the virtual machine"
  type        = string

}
variable "image_version" {
  description = "Version of the image to be used for the virtual machine"
  type        = string

}

variable "pip_name" {
  description = "Name of the backend public IP"
  type        = string
}

variable "subnet_name" {
  description = "Name of the frontend subnet"
  type        = string

}
variable "virtual_network_name" {
  description = "Name of the virtual network where the VM will be created"
  type        = string

}



