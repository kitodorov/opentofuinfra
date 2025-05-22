terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}

  subscription_id = var.AZURE_SUBSCRIPTION_ID
  client_id       = var.AZURE_APP_ID
  client_secret   = var.AZURE_APP_ID_SECRET
  tenant_id       = var.AZURE_TENANT_ID
}

// comment: This is a comment
resource "azurerm_resource_group" "example" {
  name     = "opentofu-test-rg"
  location = "West Europe"
  tags = {
    environment = "testing"
    owner = "kiril"
    created_by = "terraform_opentofu"
  }
}