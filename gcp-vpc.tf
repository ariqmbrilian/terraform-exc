terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}
provider "google" {
  project = "<PROJECT_ID>"
  region  = "asia-southeast2"
}
resource "google_compute_network" "vpc_custom" {
  name = "vpc-custom"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_custom" {
  name = "subnet-custom"
  ip_cidr_range = "10.10.10.0/24"
  network = google_compute_network.vpc_custom.id
}