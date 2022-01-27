resource "google_storage_bucket" "simple_bucket" {
  name          = "simple-bucket"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
}
