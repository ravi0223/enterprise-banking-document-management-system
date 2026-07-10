terraform {

  backend "gcs" {

    bucket = "bank-terraform-state"

    prefix = "prod"

  }

}