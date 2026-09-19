terraform {
  backend "s3" {
    bucket       = "enterprise-gitops-eks-terraform-state-85efa06b"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}