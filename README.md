The aim of this project is to start a resource group that consists of a private container in a storage account.

## Requirements: 
* Microsoft Azure account with subscription_id and tenant_id.
* A `.auto.tfvars` file (see example below and is not included with the repo so you have to make your own) with at least:
  * subscription_id
  * tenant_id
* Terraform ([Download here](https://www.terraform.io/downloads.html) based on operating system.)
* git (so you can clone this repository)

Example: 

`example.auto.tfvars` file contents (replace with your own valid ids):
```tfvars
  subscription_id = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
  tenant_id = "OOOOOOOO-OOOO-OOOO-OOOO-OOOOOOOOOOOO"

tags = {
    createdBy = "Jason"
    environment = "VM"
    project = "Linux"
  }
```

## Instructions:

1.) Clone this repository: `git clone https://github.com/DragonMeme/terraform-storage-system-azure.git`

2.) Run a terminal on the directory of the project

3.) Run `terraform init`.
OPTIONAL: Run `terraform plan` after init.

4.) Run `terraform apply`

5.) Implementation successful when you receive the output command which is of the form:
```bash
export ARM_ACCESS_KEY=$(az storage account keys list --resource-group RG --account-name tfstatetest --query [0].value -o tsv)
```