# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_ha_vpn_gateway
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_external_vpn_gateway

#HA VPN GWs in Team Account
#Team2Main HA VPN GW
resource "google_compute_ha_vpn_gateway" "main2team-vpn" {
  region   = var.main-account-region
  name     = "main2team-vpn"
  network  = google_compute_network.main-vpc.id
}