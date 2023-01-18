terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.49.0"
    }
  }
}

provider "google" {
  project = "team2-373015"
  region  = "europe-central2"
  zone    = "europe-central2-a"
}
