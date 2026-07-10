resource "google_project_service" "storage" {

  service = "storage.googleapis.com"

}


resource "google_project_service" "run" {

  service = "run.googleapis.com"

}

resource "google_project_service" "kms" {

  service = "cloudkms.googleapis.com"

}