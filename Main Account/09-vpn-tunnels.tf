# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_vpn_tunnel

# Team to Main VPN Tunnels

# Tunnel 1
resource "google_compute_vpn_tunnel" "main2team-tunnel-1" {
  name = "main2team-tunnel-1"
  shared_secret = var.main-account-ike1
  vpn_gateway = google_compute_ha_vpn_gateway.main2team-vpn.id
  vpn_gateway_interface = 0
  peer_gcp_gateway = var.main-account-ha-vpn-self-link
  peer_external_gateway_interface = 0
  router = google_compute_router.tokyo-cloud-router.id
  region = var.main-account-region
}

# Tunnel 2
resource "google_compute_vpn_tunnel" "main2team-tunnel-2" {
  name = "main2team-tunnel-2"
  shared_secret = var.main-account-ike2
  vpn_gateway = google_compute_ha_vpn_gateway.main2team-vpn.id
  vpn_gateway_interface = 1
  peer_gcp_gateway = var.main-account-ha-vpn-self-link
  peer_external_gateway_interface = 1
  router = google_compute_router.tokyo-cloud-router.id
  region = var.main-account-region
}