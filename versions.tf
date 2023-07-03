terraform {
  required_version = ">= 1.0.0"

  required_providers {

    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.19.0"
    }
  }
}

# provider "databricks" {
#   alias                  = "accounts"
#   host                   = "https://accounts.gcp.databricks.com"
#   google_service_account = var.databricks_google_service_account
#   account_id             = var.databricks_account_id
# }
