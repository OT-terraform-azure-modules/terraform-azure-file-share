# Terraform AZURE File Share Module

[![Opstree Solutions][opstree_avatar]][opstree_homepage]<br/>[Opstree Solutions][opstree_homepage]

[opstree_homepage]: https://opstree.github.io/
[opstree_avatar]: https://img.cloudposse.com/150x150/https://github.com/opstree.png

This Terraform module manages Azure Storage Accounts and File Shares. It provisions storage accounts, file shares, and optionally configures ACLs based on user input.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Usage](#usage)
- [Use Cases](#use-cases)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [Contributors](#contributors)

## Introduction

Azure Storage is a Microsoft-managed cloud service that provides storage that is highly available, secure, durable, scalable, and redundant. This module provides an easy way to deploy and manage storage accounts and file shares using Terraform.

## Features

- Creates an Azure Storage Account with specified configurations.
- Manages Azure File Shares.
- Supports optional ACL configurations for file shares.
- Allows tagging of resources for better management.
- Provides easy-to-use variables for common configurations.

## Usage

```hcl
module "file_share" {
  source = "../../"

  # Resource configuration
  resource_group_name      = var.resource_group_name
  resource_group_location  = var.resource_group_location
  storage_account_name     = var.storage_account_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  file_share_name          = var.file_share_name
  quota                    = var.quota
  create_acl               = var.create_acl
  acl_id                   = var.acl_id
  access_policy_permission = var.access_policy_permission
  access_policy_start_time = var.access_policy_start_time
  access_policy_expiry_time= var.access_policy_expiry_time
  tags                     = var.tags
} 
```
## Use Cases

### Basic Setup of Storage Account and File Share

This example demonstrates a basic setup of an Azure Storage Account and File Share using Terraform. It covers essential configurations to get started with file storage management in your Azure environment.

### Advanced Setup with ACL Configuration

Explore this example to learn how to deploy an Azure Storage Account and File Share with ACL configuration using Terraform. This setup ensures comprehensive access control management for your Azure file storage.

## Inputs

### Basic Configuration

| Name                     | Description                               | Type       | Default | Required |
|--------------------------|-------------------------------------------|------------|---------|----------|
| resource_group_name      | The name of the Resource Group            | string     | n/a     | yes      |
| resource_group_location  | The Location for the Resource Group       | string     | n/a     | yes      |
| storage_account_name     | The name of the Storage Account           | string     | n/a     | yes      |
| location                 | The location of the Storage Account       | string     | n/a     | yes      |
| account_tier             | The tier of the Storage Account           | string     | n/a     | yes      |
| account_replication_type | The replication type of the Storage Account | string   | n/a     | yes      |
| file_share_name          | The name of the File Share                | string     | n/a     | yes      |
| quota                    | The quota for the File Share              | number     | n/a     | yes      |
| tags                     | Common tags for the resources             | map(string) | {}    | no       |

### ACL Configuration

| Name                     | Description                               | Type     | Default | Required |
|--------------------------|-------------------------------------------|----------|---------|----------|
| create_acl               | Whether to create the ACL                 | bool     | false   | no       |
| acl_id                   | The ACL ID for the File Share             | string   | ""      | no       |
| access_policy_permission | The access policy permissions for the File Share | string | ""      | no       |
| access_policy_start_time | The start time for the access policy      | string   | ""      | no       |
| access_policy_expiry_time| The expiry time for the access policy     | string   | ""      | no       |

## Outputs

| Name                       | Description                                   |
|----------------------------|-----------------------------------------------|
| <a name="output_storage_account_name"></a> storage_account_name | The name of the Storage Account.               |
| <a name="output_storage_account_id"></a> storage_account_id     | The ID of the Storage Account.                 |
| <a name="output_file_share_name"></a> file_share_name           | The name of the File Share.                    |
| <a name="output_file_share_id"></a> file_share_id               | The ID of the File Share.                      |

## Contributors

- Aditya
- Rajat Vats
