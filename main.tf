terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.55.0"
    }
  }
}

provider "google" {


  project = "vm-project-285511"
  region  = "us-central1"
  zone    = "us-central1-c"
}


resource "google_storage_bucket" "gcs_bucket" {
  name = "test-bucket-random-0011230987"
}
