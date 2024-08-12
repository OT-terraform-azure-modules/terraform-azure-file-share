module "resource-group" {
  for_each                = var.create_resource_group ? { rg1 = var.resource_group_name } : {}
  source                  = "OT-terraform-azure-modules/resource-group/azure"
  version                 = "0.0.1"
  resource_group_name     = each.value
  resource_group_location = var.resource_group_location
  tag_map = merge(
    {
      "Name" = each.value
    },
    var.tags,
  )
}


resource "azurerm_storage_account" "default" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_share" "default" {
  name                 = var.file_share_name
  quota                = var.quota
  depends_on           = [azurerm_storage_account.default]
  storage_account_name = azurerm_storage_account.default.name
  dynamic "acl" {
    for_each = var.create_acl ? [1] : []
    content {
      id = var.acl_id

      access_policy {
        permissions = var.access_policy_permission
        start       = var.access_policy_start_time
        expiry      = var.access_policy_expiry_time
      }
    }
  }
}