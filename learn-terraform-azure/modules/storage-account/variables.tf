variable "resource_group_name" {
    description = "Name of the azure resource group"
    type = string
}

variable "location" {
    description = "Azure region where resources will be created"
    type = string
    default = "East US"
}

variable "storage_account_name" {
    type = string
}

variable "account_tier" {
    type = string
}

variable "account_replication_type" {
    type = string
    default = "LRS"
}