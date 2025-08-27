# https://registry.terraform.io/providers/hashicorp/google/latest/docs

provider "google" {
  project     = "arma-demoteamaccount"
  region      = "us-central1"
  credentials = "demoteamaccount.json"
}