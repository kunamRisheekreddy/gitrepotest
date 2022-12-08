resource "azurerm_key_vault" "kvt" {
  name                        = var.kvt_name
  location                    = var.kvt_location
  resource_group_name         = var.kvt_rg_name
  enabled_for_disk_encryption = var.kvt_enabled_for_disk_encryption
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.kvt_soft_delete_retention_days
  purge_protection_enabled    = var.kvt_purge_protection_enabled
  sku_name = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Get", "List"
    ]

    secret_permissions = [
      "Get", "Set"
    ]

    storage_permissions = [
      "Get", "Set"
    ]
  }
}



resource "azurerm_key_vault_secret" "key" {
  name = var.kvt_secret_name
  key_vault_id = azurerm_key_vault.kvt.id
  value = var.kvt_secret_value
}
