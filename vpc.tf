provider "google" {
  project = var.project_id
  region  = var.region
  credentials = var.gcp_credentials
}


# VPC
resource "google_compute_network" "vpc" {
<<<<<<< HEAD
  name                    = "${var.project_id}-${var.id}-vpc"
=======
  name                    = "${var.project_id}-jroberts-vpc"
>>>>>>> 402d598393ed4d11c2507b67f4756f49bb5755e9
  auto_create_subnetworks = "false"
}

# Subnet
resource "google_compute_subnetwork" "subnet" {
<<<<<<< HEAD
  name          = "${var.project_id}-${var.id}-subnet"
=======
  name          = "${var.project_id}-jroberts-subnet"
>>>>>>> 402d598393ed4d11c2507b67f4756f49bb5755e9
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
