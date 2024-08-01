module "storage_account" {
  source                   = "../../"
  storage_account_name                    = var.storage_account_name
  resource_group_name      = var.resource_group_name
  resource_group_location = var.resource_group_location
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  file_share_name                 = var.file_share_name
  quota                = var.quota
  tags = var.tags
}

