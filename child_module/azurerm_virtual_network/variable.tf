
variable "virtual_network_name" {
  description = "the name of the virtual network"
  type =    string
}
variable "virtual_network_location" {
  description = "the name of the virtual network location"
  type =    string
}
variable "resource_group_name" {
  description = "the name of the virtual network location"
  type =    string
}
variable "address_space" {
description = "name of the address space"
type = list(string)
  
}