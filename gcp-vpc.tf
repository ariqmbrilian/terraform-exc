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
}
