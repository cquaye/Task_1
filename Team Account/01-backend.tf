# https://www.terraform.io/language/settings/backends/gcs

terraform {
  backend "gcs" {
    bucket      = "tf-states-teamaccount" 
    prefix      = "terraform/task1demo"
    credentials = "demoteamaccount.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}