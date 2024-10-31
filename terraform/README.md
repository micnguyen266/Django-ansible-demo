# Linode Terraform example

Demo of Linode Terraform Provider.

### Requirements

1. Install Terraform https://www.terraform.io/intro/getting-started/install.html
2. Install `terraform-provider-linode` as described at https://github.com/displague/terraform-provider-linode
3. Get a Linode API Token (from https://cloud.linode.com)

### Files

`main.tf` in the root contains the common config needed to run the demo. 

### Usage

To use:

```bash
create terraform.tfvars locally and set your linode_token variable
```

Run Terraform init/plan/apply

```bash
terraform init (should run only once)
terraform plan
terraform apply
```

When finished remove any resources that have been created with `terraform destroy`.

```bash
terraform destroy
```