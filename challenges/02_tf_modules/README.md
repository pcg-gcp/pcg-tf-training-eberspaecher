# Terraform modules

- Create a module for your GCE instance so that we can reuse the code for the creation of multiple instances

- As a example you can use the following directory structure:
```hcl
.
├── main.tf
├── modules
│   └── gce_instance
│       ├── main.tf
│       ├── outputs.tf
│       └── variables.tf
└── providers.tf
```
- Your module should accept the `vm_name`, the `deployment_zone` and the `boot_disk_size` as variables and set these values in the create instance

- Call your module twice and create 2 instances. One should be named `test-machine` and the other one `prod-machine`.

- Use the Terraform CLI to deploy your infrastrcutre in the GCP.

- Adjust the boot_disk_size of the `test-machine` to 20GB and deploy the changes.