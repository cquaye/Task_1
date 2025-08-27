# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Tokyo Subnet - Team2Main
resource "google_compute_subnetwork" "tokyo-subnet" {
  name          = "tokyo-subnet"
  ip_cidr_range = "10.120.0.0/24"
  region        = var.main-account-region
  network       = google_compute_network.main-vpc.id
}

