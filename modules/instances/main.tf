resource "google_compute_instance" "mon_instance" {
  machine_type = var.instance_type
  name         = var.nom_instance
  boot_disk {
    initialize_params {
      image  = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  metadata = {
    ssh-keys = "pierre:ssh_key"
  }
  network_interface {
    network = google_compute_network.monvpc.name
    access_config {
    }
  }
}

resource "google_compute_network" "monvpc" {
  name = var.network_name
}

resource "google_compute_firewall" "default" {
  name    = "allow-ssh-${var.nom_instance}"
  network = google_compute_network.monvpc.name
  priority = 100

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
