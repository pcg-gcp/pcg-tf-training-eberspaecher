resource "google_compute_instance" "gce_instance" {
  name         = var.vm_name
  machine_type = "g1-small"
  zone         = var.deployment_zone

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = var.boot_disk_size
    }

  }
}
