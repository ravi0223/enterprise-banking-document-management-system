resource "google_storage_bucket" "documents" {

  name = var.bucket_name

  location = var.region

  uniform_bucket_level_access = true

  versioning {

    enabled = true

  }

}