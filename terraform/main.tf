module "storage" {

  source = "../../modules/storage"

  bucket_name = var.bucket_name

  location = var.region

}

module "kms" {

  source = "../../modules/kms"

  keyring_name = "bank-keyring"

  key_name = "document-key"

  location = var.region

}

module "storage_access" {

  source = "../../modules/iam"

  project = var.project_id

  role = "roles/storage.objectAdmin"

  member = "serviceAccount:${google_service_account.cloudrun.email}"

}

module "kms" {

  source = "../../modules/kms"

  keyring_name = "bank-keyring"

  key_name = "document-key"

  location = var.region

}

module "storage_access" {

  source = "../../modules/iam"

  project = var.project_id

  role = "roles/storage.objectAdmin"

  member = "serviceAccount:${google_service_account.cloudrun.email}"

}