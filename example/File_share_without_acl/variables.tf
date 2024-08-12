variable "create_resource_group" {
  description = "Whether to create the resource group."
  type        = bool
  default     = true
}
variable "resource_group_name" {
  description = "(Required) The name of the resource group"
  type        = string
}
variable "resource_group_location" {
  description = "(Required) The resource group location."
  type        = string
}
variable "location" {
  description = "(Required) The location for storage account."
  type        = string
}
variable "tags" {
  type        = map(string)
  description = "Map of Tags those we want to Add"
}
variable "storage_account_name" {
  description = "(Required) The name of storage account."
  type        = string
}
variable "account_tier" {
  description = "(Required) The account tier"
  type        = string
}
variable "account_replication_type" {
  description = "(Required) The replication type."
  type        = string
}
variable "file_share_name" {
  description = "(Required) The name of the file share."
  type        = string
}
variable "quota" {
  description = "(Required) quota for file share"
  type        = string
}