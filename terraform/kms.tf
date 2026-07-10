

resource "google_kms_key_ring" "bank" {

  name = "bank-keyring"

  location = var.region

}

resource "google_kms_crypto_key" "documents" {

  name = "documents-key"

  key_ring = google_kms_key_ring.bank.id

}