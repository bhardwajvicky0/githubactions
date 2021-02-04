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

#resource "google_service_account" "default" {
#  account_id   = "service_account_id"
##  display_name = "Service Account"
#}

#resource "google_compute_instance" "default" {
#  name         = "test"
#  machine_type = "e2-micro"
#  zone         = "us-central1-a"
#
#  tags = ["foo", "bar"]
#
#  boot_disk {
#    initialize_params {
#      image = "debian-cloud/debian-9"
#    }
#  }
#
#  // Local SSD disk
#  scratch_disk {
#    interface = "SCSI"
#  }
#
#  network_interface {
#    network = "default"
#
#    access_config {
##      // Ephemeral IP
#    }
#  }
#
#  metadata = {
#    foo = "bar"
#  }
#
#  metadata_startup_script = "echo hi > /test.txt"
#
#  service_account {
#    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
#    email  = google_service_account.default.email
#    scopes = ["cloud-platform"]
#  }
#}
