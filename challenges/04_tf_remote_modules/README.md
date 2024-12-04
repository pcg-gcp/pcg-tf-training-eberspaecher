## Launching a Debian VM on Google Cloud with remote Terraform Modules

This challenge will guide you through deploying a Debian virtual machine (VM) on Google Cloud Platform (GCP) using Terraform and leveraging the power of remote modules. You'll learn how to:

* Utilize publicly available Google modules for streamlined infrastructure provisioning.
* Define a service account for your VM.
* Create a reusable VM instance template with specific configurations.
* Launch a VM instance based on your custom template.

**Challenge:**

1. **Project Setup:**
   - Create a new directory for your Terraform project.
   - Inside the directory, create two files named `main.tf` and `variables.tf`.

2. **Define Variables:**
   - Open `variables.tf` and add a variable definition for your GCP project ID. This variable will be used later in your Terraform code.

3. **Configure Terraform and Resources:**
   - Open `main.tf` and start building your infrastructure:
     - **Define the Google provider:** Specify your desired region.
     - **Create a Google service account:** This account will be used by your VM.
     - **Utilize the `vm_instance_template` module:**
       - **Source:**  `terraform-google-modules/vm/google//modules/instance_template`
       - **Version:**  Choose a suitable version (e.g., `~> 12.0`)
       - **Documentation:** [https://registry.terraform.io/modules/terraform-google-modules/vm/google/latest/submodules/instance_template](https://registry.terraform.io/modules/terraform-google-modules/vm/google/latest/submodules/instance_template)
       - **You can use the following Parameters:** 
         - `machine_type = "g1-small"`
         - `labels       = { env = "test" }`
         - `source_image = "debian-11"`
         - `source_image_family = "debian-cloud"`
         - `source_image_project = "debian-cloud"`
         - `network      = "default"`
         - `tags         = ["allow-http", "allow-https"]`
       - **Source:** `terraform-google-modules/vm/google//modules/compute_instance`
       - **Version:**  Choose a version compatible with your `vm_instance_template` version.
       - **Documentation:** [https://registry.terraform.io/modules/terraform-google-modules/vm/google/latest/submodules/compute_instance](https://registry.terraform.io/modules/terraform-google-modules/vm/google/latest/submodules/compute_instance)
       - **Required Parameters:**
         - `instance_template`: Reference the output of your `vm_instance_template` module (e.g., `module.vm_instance_template.self_link`).
         - `region`: Choose a region for your VM instance.

4. **Initialize and Deploy:**
   - Open your terminal and navigate to your project directory.
   - Run `terraform init` to initialize your Terraform project and download the necessary modules.
   - Run `terraform apply` to deploy your infrastructure. You'll be prompted to provide the value for your project ID variable.
   - Review the output and confirm the deployment by checking your GCP console for the newly created VM instance.

5. **Cleanup:**
   - After you are done, run `terraform destroy` to delete the resources created by Terraform.

**Bonus Challenges:**

* **Customize VM Configuration:** Explore the available input variables for the `vm_instance_template` module to customize your VM further, such as disk size, network settings, or startup scripts. Refer to the module documentation for a complete list of options.
* **Multiple Instances:** Modify your Terraform code to deploy multiple VM instances from the same template. You can achieve this using `count` or `for_each` constructs in Terraform.