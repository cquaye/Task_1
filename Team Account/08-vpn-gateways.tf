# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_ha_vpn_gateway
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_external_vpn_gateway

#HA VPN GWs in Team Account
#Team2Main HA VPN GW
resource "google_compute_ha_vpn_gateway" "team2main-vpn" {
  region   = var.main-account-region
  name     = "team2main-vpn"
  network  = google_compute_network.team-vpc.name
}

# #Team2Arma1 HA VPN GW
# resource "google_compute_ha_vpn_gateway" "team2arma1-vpn" {
#   region   = var.arma1-account-region
#   name     = "team2arma1-vpn"
#   network  = google_compute_network.team-vpc.name
# }