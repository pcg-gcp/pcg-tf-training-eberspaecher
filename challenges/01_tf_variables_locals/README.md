# Create a Configurable GCE Instance

## Objective: Create a Terraform configuration that deploys a GCE instance with configurable settings using variables.

Requirements:

1. Create a variables.tf file to define the following variables:

- project_id
- region
- zone
- instance_name
- machine_type
- image
- network_name

2. Create a main.tf file that uses these variables to create a GCE instance.

3. Use a locals block to create a default network tag that combines the instance name and environment.

4. Create an outputs.tf file to display the instance's name and external IP address. Consult the [Terraform documentation](https://developer.hashicorp.com/terraform/language/values/outputs) to get further inforamtion on how using outputs

5. Create a terraform.tfvars file with default values for all variables.
