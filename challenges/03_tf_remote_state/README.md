# Setting up and Using Remote State in GCS

**Goal:** Configure Terraform to store state in a GCS bucket and perform basic Terraform operations.

**Steps:**

1. Create GCS Bucket:**
Run the following command to create a GCS bucket for the Terraform state: ```gsutil mb -p [YOUR_PROJECT_ID] gs://[BUCKET_NAME]```

2. Create Terraform Configuration:**
Create a file named `backend.tf` with the following content:
    
```terraform
terraform {
    backend "gcs" {
        bucket = "[BUCKET_NAME]"
        prefix = "terraform/state"
    }
}
```

3. Initialize Terraform:
Run terraform init to initialize Terraform and configure the remote state.


4. Create Resources:
Add a another GCP resource like a GCE instance or GCS bucket to your Terraform config in the `main.tf` and run terraform apply to create this resource.


5. Check State:
a) Locally: Run `terraform show` to view the current state.
b) Remotely: Check the state in the GCS bucket through the Google Cloud Console or with:
gsutil cat gs://[BUCKET_NAME]/terraform/state/default.tfstate


6. Modify Resource:
Modify your created resource and run terraform apply again.


7. State History:
Check the version history of the state file in the GCS bucket.


8. Destroy Resource:
Run terraform destroy to remove the created resources.

For more information about the GCS remote backend consult the [Terraform documentation](https://developer.hashicorp.com/terraform/language/backend/gcs)
