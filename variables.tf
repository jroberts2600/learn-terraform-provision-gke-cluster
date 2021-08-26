variable "project_id" {
  description = "project id"
}

variable "region" {
  description = "region"
}

variable "gcp_credentials" {
  type = string
  sensitive = true
  description = "GCP SA"
}