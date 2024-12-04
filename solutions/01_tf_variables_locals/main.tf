locals {
  network_tag = "${var.instance_name}-${var.environment}"
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.network_name
    access_config {
      // Ephemeral IP
    }
  }

  tags = [local.network_tag]
}