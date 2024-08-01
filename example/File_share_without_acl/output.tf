output "storage_account_name" {
  description = "The name of the Storage Account."
  value       = module.storage_account.storage_account_name
}

output "storage_account_id" {
  description = "The ID of the Storage Account."
  value       = module.storage_account.storage_account_id
}

output "file_share_name" {
  description = "The name of the File Share."
  value       = module.storage_account.file_share_name
}

output "file_share_id" {
  description = "The ID of the File Share."
  value       = module.storage_account.file_share_id
}