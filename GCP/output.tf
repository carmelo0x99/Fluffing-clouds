// A variable for extracting the external ip of the instance
output "public_ip" {
  value = google_compute_instance.default.network_interface.0.access_config.0.nat_ip
}

// A variable for extracting the external IP address of the VM
output "Web-server-URL" {
  value = join("", ["http://", google_compute_instance.default.network_interface.0.access_config.0.nat_ip, ":5000"])
}

