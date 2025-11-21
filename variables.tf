# #######################################################
# Azure Resource Naming is easier with this
# Terraform Module for the AzureRM Provider
#
# Source:
# https://github.com/Build5Nines/tf-azure-region-naming
#
# Author: Chris Pietschmann (https://pietschsoft.com)
# Copyright (c) 2025 Build5Nine LLC
# #######################################################

variable "organization" {
    description = "The name part of Azure resource names representing the Organization"
    type        = string
}

variable "environment" {
    description = "The environment name part of Azure resource names representing the Environment"
    type        = string
}

variable "location" {
    description = "The Azure Region where the Azure Resources will be deployed (e.g. East US, West US, eastus, westus, etc.)"
    type        = string
    validation {
        condition = contains([
        # Americas
        "East US", "eastus",
        "West US", "westus",
        "Central US", "centralus",
        "North Central US", "northcentralus",
        "South Central US", "southcentralus",
        "East US 2", "eastus2",
        "West US 2", "westus2",
        "Canada Central", "canadacentral",
        "Canada East", "canadaeast",
        "Brazil South", "brazilsouth"
        # TODO: Fill out to full list of Azure Regions
        ], var.location)
        error_message = "The Location specified must be a valid Azure Region. You can use either the display name (e.g. 'East US') or the short name (e.g. 'eastus')."
    }
}

variable "name_suffix_pattern" {
    description = "The pattern to use for the name suffix in Azure resource names. This can include placeholders for organization, environment, and location."
    type        = string
    default     = "{org}-{loc}-{env}"
}
