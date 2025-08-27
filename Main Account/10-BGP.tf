# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_interface
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_peer

# BGP setup for main2team Tunnels

# Tunnel 1 BGP
resource "google_compute_router_interface" "main2team-tunnel-1-bgp" {
  name = "main2team-tunnel-1-bgp"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  ip_range = "${var.main-tunnel1-cloudrouter-bgp-ip}/30"    # peer BGP IP of main account tunnel 1
  vpn_tunnel = google_compute_vpn_tunnel.main2team-tunnel-1.id
}

resource "google_compute_router_peer" "main2team-tunnel-1-peer" {
  name = "main2team-tunnel-1-peer"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  peer_ip_address = var.main-tunnel1-peer-bgp-ip
  peer_asn = var.team2main-team-side-asn
  interface = google_compute_router_interface.main2team-tunnel-1-bgp.name
}

# Tunnel 2 BGP
resource "google_compute_router_interface" "main2team-tunnel-2-bgp" {
  name = "main2team-tunnel-2-bgp"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  ip_range = "${var.main-tunnel2-cloudrouter-bgp-ip}/30"    # peer BGP IP of main account
  vpn_tunnel = google_compute_vpn_tunnel.main2team-tunnel-2.id
}

resource "google_compute_router_peer" "main2team-tunnel-2-peer" {
  name = "main2team-tunnel-2-peer"
  router = google_compute_router.tokyo-cloud-router.name
  region = var.main-account-region
  peer_ip_address = var.main-tunnel2-peer-bgp-ip
  peer_asn = var.team2main-team-side-asn
  interface = google_compute_router_interface.main2team-tunnel-2-bgp.name
}