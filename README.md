# Terraform Azure Provider Example

This Terraform code demonstrates how to use the Azure provider to create an Azure Resource Group, Storage Account, and Storage Container.

## Prerequisites

- Terraform installed on your machine.
- An Azure account with the necessary permissions to create the resources.

## Usage

1. Clone this repository.
2. Navigate to the cloned directory.
3. Run `terraform init` to initialize the working directory.
4. Run `terraform plan` to see the changes that will be made.
5. Run `terraform apply` to create the resources.

## Azure Provider Block

The Azure provider block is defined in the `provider.tf` file. It includes the necessary authentication details to connect to your Azure account.

## Azure Resource Group

The `azurerm_resource_group` resource block is defined in the `resource.tf` file. It creates an Azure Resource Group with the name `lokesh-1-resources` in the `East US` location.

## Azure Storage Account

The `azurerm_storage_account` resource block is defined in the `resource.tf` file. It creates an Azure Storage Account with the name `lokeshaccount`, `Standard` tier, and `LRS` replication type.

## Azure Storage Container

The `azurerm_storage_container` resource block is defined in the `resource.tf` file. It creates an Azure Storage Container with the name `lokesh-1container` and `private` access type.
