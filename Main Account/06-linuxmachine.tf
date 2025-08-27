# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance

# Tokyo Linux VM
resource "google_compute_instance" "tokyo-linux-machine" {
  name         = "tokyo-linux-machine"
  machine_type = "e2-standard-4"
  zone         = "asia-northeast1-a"
  tags         = ["ssh", "icmp"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo-subnet.id
    access_config {}
  }
}