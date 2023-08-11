terraform {
  required_version = ">= 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.69.1"
    }
    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.19.0"
    }
  }
}
