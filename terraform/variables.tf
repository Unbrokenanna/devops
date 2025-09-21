/* Common variables */
variable "project_id" {
  description = "Project ID to create resources in."
  type        = string
  default     = "effective-light-472816-s6"
}

variable "region" {
  description = "Region to place compute resources at."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone to place compute resource at."
  type        = string
  default     = "us-east1"
}

variable "network" {
  description = "Network to create compute resources in."
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Subnet to create compute resources in."
  type        = string
  default     = "default"
}

variable "machine_type" {
  description = "Machine type for GCE instance."
  type        = string
  default     = "e2-standard-2"
}

variable "machine_name" {
  description = "Compute Instance name."
  type        = string
  default     = "test-vm"
}

variable "bucket_name" {
  description = "Bucket created via Terraform"
  type        = string 
  default     = "bucket_via_terraform_af"}

variable "dataset_id " {
  description = "BigQuery dataset created via Terraform"
  type        = string 
  default     = "bigquery_dataset_via_terraform_af"}