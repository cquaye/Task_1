# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_interface
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_peer

# BGP setup for Team2Main Tunnels

# Tunnel 1 BGP
resource "google_compute_router_interface" "team2main-tunnel-1-bgp" {
  name = "team2main-tunnel-1-bgp"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  ip_range = "${var.main-tunnel1-peer-bgp-ip}/30"    # peer BGP IP of main account tunnel 1
  vpn_tunnel = google_compute_vpn_tunnel.team2main-tunnel-1.id
}

resource "google_compute_router_peer" "team2main-tunnel-1-peer" {
  name = "team2main-tunnel-1-peer"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  peer_ip_address = var.main-tunnel1-cloudrouter-bgp-ip
  peer_asn = var.team2main-main-side-asn
  interface = google_compute_router_interface.team2main-tunnel-1-bgp.name
}

# Tunnel 2 BGP
resource "google_compute_router_interface" "team2main-tunnel-2-bgp" {
  name = "team2main-tunnel-2-bgp"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  ip_range = "${var.main-tunnel2-peer-bgp-ip}/30"    # peer BGP IP of main account
  vpn_tunnel = google_compute_vpn_tunnel.team2main-tunnel-2.id
}

resource "google_compute_router_peer" "team2main-tunnel-2-peer" {
  name = "team2main-tunnel-2-peer"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  peer_ip_address = var.main-tunnel2-cloudrouter-bgp-ip
  peer_asn = var.team2main-main-side-asn
  interface = google_compute_router_interface.team2main-tunnel-2-bgp.name
}

# # BGP setup for Team2Arma1 Tunnels

# # Tunnel 1 BGP
# resource "google_compute_router_interface" "team2arma1-tunnel-1-bgp" {
#   name = team2arma1-tunnel-1-bgp
#   router = google_compute_router.iowa-cloud-router.id
#   region = var.arma1-account-region
#   ip_range = var.arma1-tunnel1-peer-bgp-ip    # peer BGP IP of main account tunnel 1
#   vpn_tunnel = google_compute_vpn_tunnel.team2arma1-tunnel-1
# }

# resource "google_compute_router_peer" "team2arma1-tunnel-1-peer" {
#   name = team2arma1-tunnel-1-peer
#   router = google_compute_router.iowa-cloud-router.id
#   region = var.arma1-account-region
#   peer_ip_address = var.arma1-tunnel1-cloudrouter-bgp-ip
#   peer_asn = var.team2arma1-arm1-side-asn
#   interface = google_compute_router_interface.team2arma1-tunnel-1-bgp.id
# }

# # Tunnel 2 BGP
# resource "google_compute_router_interface" "team2arma1-tunnel-2-bgp" {
#   name = team2arma1-tunnel-2-bgp
#   router = google_compute_router.iowa-cloud-router.id
#   region = var.arma1-account-region
#   ip_range = var.arma1-tunnel2-peer-bgp-ip    # peer BGP IP of main account
#   vpn_tunnel = google_compute_vpn_tunnel.team2arma1-tunnel-2
# }

# resource "google_compute_router_peer" "team2arma1-tunnel-2-peer" {
#   name = team2arma1-tunnel-2-peer
#   router = google_compute_router.iowa-cloud-router.id
#   region = var.arma1-account-region
#   peer_ip_address = var.arma1-tunnel2-cloudrouter-bgp-ip
#   peer_asn = var.team2arma1-arm1-side-asn
#   interface = google_compute_router_interface.team2arma1-tunnel-2-bgp.id
# }