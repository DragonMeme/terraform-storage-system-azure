# Configure the provider. 
# Replace your subscription_id and tenant_id using a .auto.tfvars file
# that contains both the ids and possibly the other variables in this file.
provider "azurerm" {
    version         = "~>1.30.0"
    subscription_id = var.subscription_id
    tenant_id       = var.tenant_id
}

# Create resource group.
resource "azurerm_resource_group" "test" {
    name            = var.resourceName
    location        = var.region

    # Add tags.
    tags            = {
        environment = var.tagEnvironment
        project     = var.tagProject
        createdBy   = var.tagAuthor
    }
}

# Create storage group
resource "azurerm_storage_account" "test" {
    name                        = var.storageAccountName
    resource_group_name         = azurerm_resource_group.test.name
    location                    = azurerm_resource_group.test.location
    account_tier                = "Standard"
    account_replication_type    = "GRS"
}

# Create container
resource "azurerm_storage_container" "test" {
    name = var.containerAccountName
    resource_group_name   = azurerm_resource_group.test.name
    storage_account_name  = azurerm_storage_account.test.name
    container_access_type = "container"
}