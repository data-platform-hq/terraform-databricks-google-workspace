locals {
  workspace_name = var.custom_workspace_name == null ? "${var.product_base_name}-${var.env}-dbws" : var.custom_workspace_name
  network_name   = var.custom_network_name == null ? "${var.product_base_name}-${var.env}-dbnw" : var.custom_network_name
}

resource "databricks_mws_networks" "this" {
  account_id   = var.databricks_account_id
  network_name = local.network_name

  gcp_network_info {
    network_project_id = var.project_id
    vpc_id             = var.databricks_vpc
    subnet_id          = var.databricks_subnet
    subnet_region      = var.region
  }

  dynamic "vpc_endpoints" {
    for_each = length(var.vpc_endpoint_ids) > 0 ? [1] : []

    content {
      dataplane_relay = [var.vpc_endpoint_ids["dataplane_relay"]]
      rest_api        = [var.vpc_endpoint_ids["rest_api"]]
    }
  }
}

resource "databricks_mws_private_access_settings" "this" {
  count = var.private_access_settings != null ? 1 : 0

  region                       = var.region
  private_access_settings_name = var.private_access_settings.name
  public_access_enabled        = var.private_access_settings.public_access_enabled
  private_access_level         = var.private_access_settings.private_access_level
}

resource "databricks_mws_workspaces" "this" {
  account_id     = var.databricks_account_id
  workspace_name = local.workspace_name
  location       = var.region
  network_id     = databricks_mws_networks.this.network_id

  private_access_settings_id = (
    var.private_access_settings != null
    ? databricks_mws_private_access_settings.this[0].private_access_settings_id
    : null
  )

  cloud_resource_container {
    gcp {
      project_id = var.project_id
    }
  }

  token {
    comment = "Terraform"
  }

  depends_on = [databricks_mws_networks.this, databricks_mws_private_access_settings.this]
}
