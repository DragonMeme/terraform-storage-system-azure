variable "subscription_id" {
    # replace "invalid" with your subscription id
    default = "invalid"
    description = "Add your valid subscription to this variable."
}

variable "tenant_id" {
    # replace "invalid" with your tenant id
    default = "invalid"
    description = "Add your valid subscription to this variable."
}

variable "resourceName" {
    default = "RG_VM"
    description = "Name of the resource group."
}

variable "region" {
    default = "australiaeast"
    description = "Region of the resource group."
}

variable "storageAccountName" {
    default = "statestoragelvm"
    description = "Name of the storage account."
}

variable "containerAccountName" {
    default = "tfstate"
    description = "Name of the container in the storage account."
}

variable "tags" {
    default = {
        Environment = "TEST"
        Project = "Store Shared State"
        CreatedBy = "Anonymous"
    }
}