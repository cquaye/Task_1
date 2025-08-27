# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router

#Main VPN Connection
#Tokyo Cloud Router
resource "google_compute_router" "tokyo-cloud-router" {
  name    = "tokyo-cloud-router"
  network = google_compute_network.team-vpc.name
  region = "asia-northeast1"
  bgp {
    asn               = var.team2main-team-side-asn
    }
}

#Arma1 VPN Connection
# #Iowa Cloud Router
# resource "google_compute_router" "iowa-cloud-router" {
#   name    = "iowa-cloud-router"
#   network = google_compute_network.team-vpc.name
#   region = "us-central1"
#   bgp {
#     asn               = var.team2arma1-team-side-asn
#     }
# }