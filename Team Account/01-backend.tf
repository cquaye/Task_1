# https://www.terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket      = "lab-team" 
    prefix      = ""
    credentials = "*"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}