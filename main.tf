########################################################################################################################
## Providers
########################################################################################################################

terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.12.0, <4.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Platform-Engineering"
    storage_account_name = "sdxcloudterraform"
    container_name       = "terraform-state-files"
    key                  = "terraform-azure-test-fpilsl.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

## ---------------------------------------------------------------------------------------------------------------------
## General Configuration
## ---------------------------------------------------------------------------------------------------------------------

locals {
  team_name = "Platform-Engineering"
}

## ---------------------------------------------------------------------------------------------------------------------
## Miscellaneous
## ---------------------------------------------------------------------------------------------------------------------

## ---------------------------------------------------------------------------------------------------------------------
## Modules
## ---------------------------------------------------------------------------------------------------------------------

module "backstage_techdocs_storage" {
  source  = "github.com/florianpilsl-at-arrow/terraform-storage"

  resource_group_name    = var.resource_group_name
  storage_account_name   = "fpilslstorageaccount"
  storage_container_name = "backstagetechdocscontainer"
  return_access_key      = true
}
