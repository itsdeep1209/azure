module "storage-account" {
    source = "./modules/storage-account"
    resource_group_name = var.resource_group_name
    location = var.location
    storage_account_name = var.storage_account_name
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
}

output "storage_account_id" {
    value = module.storage-account.storage_account_id
}

output "storage_account_name" {
    value = module.storage-account.storage_account_name
}