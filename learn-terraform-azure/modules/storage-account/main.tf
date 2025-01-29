provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "tf-test" {
    name = var.resource_group_name
    location = var.location
}

resource "azurerm_storage_account" "storage" {
    name = var.storage_account_name
    resource_group_name = azurerm_resource_group.tf-test.name
    location = azurerm_resource_group.tf-test.location
    account_tier = var.account_tier
    account_replication_type = var.account_replication_type
}
