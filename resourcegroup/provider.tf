terraform {
    required_providers {
      azurerm = {
        source="hashicorp/azurerm"
        version=">2.71.0"
      }
    }
    
}

provider "azurerm"{
    features{}
    # subscription_id=""
    # tenant_id=""
}