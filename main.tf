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

locals {
    location_abbr = [
        # Americas
        "East US" = "eus",
        "eastus" = "eus",
        "West US" = "wus",
        "westus" = "wus",
        "Central US" = "cus",
        "centralus" = "cus",
        "North Central US" = "ncus",
        "northcentralus" = "ncus",
        "South Central US" = "scus",
        "southcentralus" = "scus",
        "East US 2" = "eus2",
        "eastus2" = "eus2",
        "West US 2" = "wus2",
        "westus2" = "wus2",
        "Canada Central" = "cac",
        "canadacentral" = "cac",
        "Canada East" = "cae",
        "canadaeast" = "cae",
        "Brazil South" = "brs",
        "brazilsouth" = "brs"
        # TODO: Fill out to full list of Azure Regions
        # TODO: Use a JSON file for his lookup list?
    ]

    azure_region_pair = {
        # Americas
        "East US" = "eastus",
        "eastus" = "eastus",
        "West US" = "westus",
        "westus" = "westus",
        "Central US" = "centralus",
        "centralus" = "centralus",
        "North Central US" = "northcentralus",
        "northcentralus" = "northcentralus",
        "South Central US" = "southcentralus",
        "southcentralus" = "southcentralus",
        "East US 2" = "eastus2",
        "eastus2" = "eastus2",
        "West US 2" = "westus2",
        "westus2" = "westus2",
        "Canada Central" = "canadacentral",
        "canadacentral" = "canadacentral",
        "Canada East" = "canadaeast",
        "canadaeast" = "canadaeast",
        "Brazil South" = "brazilsouth",
        "brazilsouth" = "brazilsouth"
        # TODO: Fill out to full list of Azure Regions
        # TODO: Use a JSON file for his lookup list?
    }

    name_suffix = replace(
        replace(
            replace(
                var.name_suffix_pattern,
                "{org}", var.organization
            ),
            "{env}", var.environment
        ),
        "{loc}", local.location_abbr[var.location]
    )
}

# Azure Naming Module
# https://github.com/Azure/terraform-azurerm-naming
module "azure_name_prefix" {
    soruce = "Azure/naming/azurerm"
    suffix = local.name_suffix
}
