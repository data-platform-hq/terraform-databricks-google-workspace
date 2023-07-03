# variable "google_project" {
#   description = "value"
#   type        = string
#   default     = ""
# }

# variable "google_region" {
#   description = "value"
#   type        = string
#   default     = ""
# }

# variable "google_zone" {
#   description = "value"
#   type        = string
#   default     = ""
# }

variable "project_id" {
  description = "ID of the project in which the resources should be created."
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

variable "zone" {
  description = "The default zone to manage resources in."
  type        = string
  default     = "us-west1-b"
}


variable "databricks_account_id" {
  description = "Account Id that could be found in the bottom left corner of https://accounts.cloud.databricks.com/"
  type        = string
  # default     = ""
}

variable "databricks_google_service_account" {
  description = "value"
  type        = string
  default     = ""
}

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
