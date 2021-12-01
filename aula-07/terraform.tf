terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.1.0"
    }
  }
  backend "gcs" {
    bucket  = "4linuxstateterraform"
    prefix  = "terraform/state"
  }
}

provider "google" {
}


