# Terraform_ZTM_NOTES

## Create Infrastructure

  1. Connect with an IAS platform (e.g. AWS, AZURE, GCP ) to use it's API to create resources inside it.
  2. To connect to an IAS platform and manage their infrastructure terraform uses a **Provider**(plugins that terraform uses to create and manage resources of that specific cloud like **libraries/packages/sdk** of programming languages).
  3. Write configuration
  4. Install providers `terraform init`
  5. Format and validate the configuration `terraform fmt` and `terraform validate`
  6. Export `AWS_ACCESS_KEY_ID` and `AWS_ACCESS_KEY`
  7. Create the infrastructure `terraform apply`  

## Destroy infrastructure

- Run `terraform destroy` to destroy all resources
- Run `terraform destroy -target <resource_type>.<reference_name>`
- Remove or Comment out the resource and then run `terraform destroy`
