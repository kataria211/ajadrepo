variable "pip_name" {
  description = "Name of the public IP address"
  type        = string

}

variable "sku_name" {
  description = "SKU for the public IP address (Basic or Standard)"
  type        = string
  
}
variable "resource_group_name" {
  description = "Name of the resource group where the public IP address will be created"
  type        = string
}
variable "location" {
  description = "Location where the public IP address will be created"
  type        = string

}
variable "allocation_method" {
  description = "Allocation method for the public IP address (Static or Dynamic)"
  type        = string
  default     = "Static"

}
