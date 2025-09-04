# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_vpn_tunnel



# query for ha vpn self link


# # Team to Main VPN Tunnels

# Tunnel 1
resource "google_compute_vpn_tunnel" "team2main-tunnel-1" {
  name = "team2main-tunnel-1"
  shared_secret = var.main-account-ike1
  vpn_gateway = google_compute_ha_vpn_gateway.team2main-vpn.id
  vpn_gateway_interface = 0
  peer_gcp_gateway = var.team-ha-vpn-self-link
  peer_external_gateway_interface = 0
  router = google_compute_router.tokyo-cloud-router.id
  region = var.main-account-region
}

# Tunnel 2
resource "google_compute_vpn_tunnel" "team2main-tunnel-2" {
  name = "team2main-tunnel-2"
  shared_secret = var.main-account-ike2
  vpn_gateway = google_compute_ha_vpn_gateway.team2main-vpn.id
  vpn_gateway_interface = 1
  peer_gcp_gateway = var.team-ha-vpn-self-link
  peer_external_gateway_interface = 1
  router = google_compute_router.tokyo-cloud-router.id
  region = var.main-account-region
}


# # Team to Arma1 VPN Tunnels

# # Tunnel 1
# resource "google_compute_vpn_tunnel" "team2arma1-tunnel-1" {
#   name = team2arma1-tunnel-1
#   shared_secret = var.arma1-account-ike1
#   vpn_gateway = google_compute_ha_vpn_gateway.team2arma1-vpn.id
#   vpn_gateway_interface = 0
#   peer_external_gateway = google_compute_external_vpn_gateway.arma1-external-vpn-gw.id
#   peer_external_gateway_interface = 0
#   router = google_compute_router.iowa-cloud-router.id
# }

# # Tunnel 2
# resource "google_compute_vpn_tunnel" "team2arma1-tunnel-2" {
#   name = team2arma1-tunnel-2
#   shared_secret = var.arma1-account-ike2
#   vpn_gateway = google_compute_ha_vpn_gateway.team2arma1-vpn.id
#   vpn_gateway_interface = 1
#   peer_external_gateway = google_compute_external_vpn_gateway.arma1-external-vpn-gw.id
#   peer_external_gateway_interface = 1
#   router = google_compute_router.iowa-cloud-router.id
# }