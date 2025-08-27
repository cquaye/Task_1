# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall

# Direct SSH Access for Lizzo lovers
# For main VPC
resource "google_compute_firewall" "ssh" {
  name    = "allow-ssh"
  network = google_compute_network.team-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# resource "google_compute_firewall" "http" {
#   name    = "http"
#   network = google_compute_network.team-vpc.name

#   allow {
#     protocol = "tcp"
#     ports    = ["80"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }

# Lizzo's ping FW rule
resource "google_compute_firewall" "ping" {
  name    = "ping"
  network = google_compute_network.team-vpc.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]

}