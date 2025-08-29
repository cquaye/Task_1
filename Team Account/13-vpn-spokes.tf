# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/network_connectivity_spoke

# TEAM2MAIN Connection for Both Tunnels
resource "google_network_connectivity_spoke" "team2main-tunnel1" {
  name = "team2main-tunnel1"
  location = "asia-northeast1"
  hub = google_network_connectivity_hub.armageddon65-ncc-hub.id

  linked_vpn_tunnels {
    uris = [google_compute_vpn_tunnel.team2main-tunnel-1.self_link]
    site_to_site_data_transfer = true
  }
}

resource "google_network_connectivity_spoke" "team2main-tunnel2" {
  name = "team2main-tunnel2"
  location = "asia-northeast1"
  hub = google_network_connectivity_hub.armageddon65-ncc-hub.id

  linked_vpn_tunnels {
    uris = [google_compute_vpn_tunnel.team2main-tunnel-2.self_link]
    site_to_site_data_transfer = true
  }
}

# TEAM2ARMA1 Connection for Both Tunnels