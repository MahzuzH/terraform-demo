terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "7.18.0"
    }
  }
}

provider "google" {
  credentials = file("${path.module}/keys/my-creds.json")
  project = "terraform-demo-mhz"
  region  = "asia-southeast2"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = "terraform-demo-mhz-terra-bucket"
  location      = "asia-southeast2"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
