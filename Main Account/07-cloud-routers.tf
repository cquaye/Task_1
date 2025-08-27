# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router

#Tokyo Cloud Router
resource "google_compute_router" "tokyo-cloud-router" {
  name    = "tokyo-cloud-router"
  network = google_compute_network.main-vpc.id
  region = var.main-account-region
  bgp {
    asn               = var.team2main-main-side-asn
    }
}