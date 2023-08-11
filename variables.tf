variable "project_id" {
  description = "ID of the project in which the resources should be created."
  type        = string
}

variable "databricks_account_id" {
  description = "Account Id that could be found in the bottom left corner of https://accounts.cloud.databricks.com/"
  type        = string
}

variable "product_base_name" {
  description = "Cloud resources base name (used to create services)."
  type        = string
  default     = "iacda"
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "The location or cloud resources region for the environment."
  type        = string
  default     = "us-west1"
}

# variable "databricks_google_service_account" {
#   description = "value"
#   type        = string
#   default     = null
# }

variable "databricks_vpc" {
  description = "value"
  type        = string
  default     = null
}

variable "databricks_subnet" {
  description = "value"
  type        = string
  default     = null
}

variable "gke_connectivity_type" {
  description = "Specifies the network connectivity types for the GKE nodes and the GKE master network. Possible values are: PRIVATE_NODE_PUBLIC_MASTER, PUBLIC_NODE_PUBLIC_MASTER"
  type        = string
  default     = "PRIVATE_NODE_PUBLIC_MASTER"
}

variable "gke_master_ip_range" {
  description = <<-EOT
  The IP range from which to allocate GKE cluster master resources.
  This field will be ignored if GKE private cluster is not enabled.
  It must be exactly as big as /28"value
  EOT
  type        = string
  default     = "10.3.0.0/28"
}

variable "custom_workspace_name" {
  type        = string
  description = "Specifies the name of the Databricks Workspace resource"
  default     = null
}

variable "custom_network_name" {
  type        = string
  description = "Specifies the name of the Databricks Network configurations"
  default     = null
}
