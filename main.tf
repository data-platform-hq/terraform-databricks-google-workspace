locals {
  workspace_name = var.custom_workspace_name == null ? "${var.product_base_name}-${var.env}-dbws" : var.custom_workspace_name
  network_name   = var.custom_network_name == null ? "${var.product_base_name}-${var.env}-dbnw" : var.custom_network_name
}

# data "google_compute_subnetwork" "this" {
#   name   = var.databricks_subnet
#   region = var.region
# }

# data "google_client_openid_userinfo" "me" {}
# data "google_client_config" "current" {}

resource "databricks_mws_networks" "this" {
  account_id   = var.databricks_account_id
  network_name = local.network_name
  gcp_network_info {
    network_project_id    = var.project_id
    vpc_id                = var.databricks_vpc
    subnet_id             = var.databricks_subnet
    subnet_region         = var.region
    pod_ip_range_name     = "pods"
    service_ip_range_name = "svc"
  }
}

resource "databricks_mws_workspaces" "this" {
  account_id     = var.databricks_account_id
  workspace_name = local.workspace_name
  location       = var.region
  cloud_resource_container {
    gcp {
      project_id = var.project_id
    }
  }

  network_id = databricks_mws_networks.this.network_id
  gke_config {
    connectivity_type = var.gke_connectivity_type
    master_ip_range   = var.gke_master_ip_range
  }


  token {
    comment = "Terraform"
  }
  depends_on = [databricks_mws_networks.this]
}
