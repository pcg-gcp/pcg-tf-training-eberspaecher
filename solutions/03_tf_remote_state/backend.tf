terraform {
  backend "gcs" {
    bucket = "marius-test-backend-47gt4"
    prefix = "terraform/state"
  }
}