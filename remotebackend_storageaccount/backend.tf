terraform {
    backend "azurerm" {
        resource_group_name="samplerg"
        storage_account_name="tfstorethulasi"
        container_name="tfstate"
        key="terraform.tfstate"
    }
}