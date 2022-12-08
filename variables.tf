variable "kvt_name" {}
variable "kvt_location" {}
variable "kvt_rg_name" {}
variable "kvt_enabled_for_disk_encryption" {
    type = bool
}
variable "kvt_soft_delete_retention_days" {}
variable "kvt_purge_protection_enabled" {
    type = bool
}
variable "sku_name" {}
variable "kvt_secret_value" {}
variable "kvt_secret_name" {}


