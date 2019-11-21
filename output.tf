output "Command" {
    value = "export ARM_ACCESS_KEY\u003D\u0024(az storage account keys list --resource-group ${azurerm_resource_group.test.name} --account-name ${var.storageAccountName} --query [0].value -o tsv)"
    description = "Command used to obtain access key."
}