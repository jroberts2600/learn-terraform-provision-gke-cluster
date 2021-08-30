provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.gcp_credentials
}


# VPC
resource "google_compute_network" "vpc" {

  name                    = "${var.project_id}-${var.id}-vpc"
  name                    = "${var.project_id}-jroberts-vpc"
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-${var.id}-subnet"
  name          = "${var.project_id}-jroberts-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
