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
    default = "RG_TEST"
    description = "Name of the resource group."
}

variable "region" {
    default = "australiaeast"
    description = "Region of the resource group."
}

variable "storageAccountName" {
    default = "msa2019interntfstatetest"
    description = "Name of the storage account."
}

variable "containerAccountName" {
    default = "tfstate"
    description = "Name of the container in the storage account."
}


# tag environment
variable "tagEnvironment" {
    default = "TEST"
    description = "Add tag to what the purpose of what the scripts here does overall."
}

variable "tagProject" {
    default = "Store Shared State"
    description = "Add tag to what the purpose of what the scripts here does overall."
}

variable "tagAuthor" {
    default = "Anonymous"
    description = "Add name of author."
}