variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "gcp_credentials" {
  sensitive = true
  description = "GCP SA"
}

variable "id" {
  description = "resource names"
}
