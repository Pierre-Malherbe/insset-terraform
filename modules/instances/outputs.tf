output "mon_adresse_ip" {
  value = google_compute_instance.mon_instance.network_interface[0].access_config[0].nat_ip
}

output "name" {
  value = google_compute_instance.mon_instance.name
}
