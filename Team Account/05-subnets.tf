# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork

# Tokyo Subnet - Team2Main
resource "google_compute_subnetwork" "tokyo-subnet" {
  name          = "tokyo-subnet"
  ip_cidr_range = "10.150.0.0/24"
  region        = "asia-northeast1"
  network       = google_compute_network.team-vpc.id
}

# # Iowa Subnet - Team2Arma1
# resource "google_compute_subnetwork" "iowa-subnet" {
#   name                     = "iowa-subnet"
#   ip_cidr_range            = "10.130.0.0/24"
#   region                   = "us-central1"
#   network                  = google_compute_network.team-vpc.id
# }
