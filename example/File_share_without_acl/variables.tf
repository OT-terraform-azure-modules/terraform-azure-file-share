variable "create_resource_group" {
  description = "Whether to create the resource group."
  type        = bool
  default     = true
}
variable "resource_group_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "location" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "resource_group_location" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "tags" {
  type        = map(string)
  description = "Map of Tags those we want to Add"
}
variable "storage_account_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "account_tier" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "account_replication_type" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "file_share_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "quota" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
