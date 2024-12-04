resource "google_service_account" "gce_service_account" {
  account_id = "gce-test"
}

module "vm_instance_template" {
  source  = "terraform-google-modules/vm/google//modules/instance_template"
  version = "12.1.2"

  service_account = {
    email = google_service_account.gce_service_account.email
  }

  machine_type = "g1-small"
  labels       = { env = "test" }
  source_image = "debian-11"
  source_image_family = "debian-cloud"
  source_image_project = "debian-cloud"
  network      = "default"
  tags         = ["allow-http", "allow-https"]
  project_id = var.project_id
}

module "vm_compute_instance" {
  source  = "terraform-google-modules/vm/google//modules/compute_instance"
  version = "12.1.2"

  instance_template = module.vm_instance_template.self_link
  region            = "europe-west1"
}