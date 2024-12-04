# Setup your Terraform environment

- Create a directory or navigate to an exisiting where you want to deploy your Terraform code.

- Run ```gcloud auth list``` and analyze the output to ensure that you are logged in into gcloud with your Google user.

- Run ```terraform --version``` to ensure that Terraform is working on your machine.

- Create the following files in your working directory: `main.tf` and `providers.tf`.

- Configure the Google provider the `providers.tf` to use your GCP project and `europe-west1` as default region for resources. Consult the [Terraform Documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs) to see how to confiure the provider

- In the `main.tf` create a resource for a GCE compute instance with instance type `g1-small` and Debian as OS. As deployment zone you can use `europe-west1-c`. You can use the [Terraform Documentation](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) to get a working code snippet and see which fields are required.

- Use the Terraform CLI and run the `init`, `plan` and `apply` commands to deploy the GCE instance via Terraform.

- Go into the Google Cloud console and connect to your newly created VM via SSH to ensure that the instance was created as expected