provider "azurerm"{
    features{}
}

#create a resourcegroup

resource "azurerm_resource_group" "resourcegroup"{
    name="newrgterraform"
    location="eastus"
}

#create a storage account

resource "azurerm_storage_account" "storage_account"{
    name="terraformthulasistore"
    resource_group_name=azurerm_resource_group.resourcegroup.name
    location=azurerm_resource_group.resourcegroup.location
    account_tier="Standard"
    account_replication_type="LRS"
    account_kind="StorageV2"
    static_website {
        index_document="index.html"
    }
}

#add a index.html file
resource "azurerm_storage_blob" "blob"{
    name="index.html"
    storage_account_name=azurerm_storage_account.storage_account.name
    storage_container_name="$web"
    type="Block"
    content_type="text/html"
    source_content="<h1>Hi, this is thulasi from terraform methd</h1>"

}

 