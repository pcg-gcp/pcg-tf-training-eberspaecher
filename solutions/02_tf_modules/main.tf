module "test_machine" {
  source          = "./modules/gce_instance"

  vm_name         = "test-machine"
  deployment_zone = "europe-west1-c"
  boot_disk_size  = 10

}

module "prod_machine" {
  source          = "./modules/gce_instance"
  
  vm_name         = "prod-machine"
  deployment_zone = "europe-west1-c"
  boot_disk_size  = 10

}