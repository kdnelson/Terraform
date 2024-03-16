# Terraform

https://registry.terraform.io/

# Functions and syntax

min(42,5,16)
lower("TACOCAT")
cidrsubnet(var.vpc_cidr_block, 8, 0)
cidrhost(cidrsubnet(var.vpc_cidr_block, 8, 0),5)

local.common_tags
local.common_tags["company"]
local.common_tags["missing"]
lookup(local.common_tags, "company", "Unknown")
lookup(local.common_tags, "missing", "Unknown")

# Subnet range function

range(var.vpc_public_subnet_count)

# Loop for expression

[for subnet in range(var.vpc_public_subnet_count): cidrsubnet(var.vpc_cidr_block, 8, subnet)]

# Prepare config

terraform console
terraform init
terraform fmt -recursive
terraform validate

# Update the deployment

terraform plan -out managed_services.tfplan
terraform apply managed_services.tfplan

# Preview what Terraform would destroy

terraform apply -destroy

# Destroy what Terraform has built, so AWS charges hault

terraform apply -destroy
terraform destroy
