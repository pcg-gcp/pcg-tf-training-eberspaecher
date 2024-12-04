resource "google_compute_instance" "my_first_instance" {
  name         = "my-first-instance"
  machine_type = "g1-small"
  zone         = "europe-west1-c"

  network_interface {
    network = "default"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10
    }

  }
}
