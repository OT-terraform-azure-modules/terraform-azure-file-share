output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = azurerm_storage_account.default.name
}

output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = azurerm_storage_account.default.id
}

output "file_share_name" {
  description = "The name of the File Share."
  value       = azurerm_storage_share.default.name
}

output "file_share_id" {
  description = "The ID of the File Share."
  value       = azurerm_storage_share.default.id
}