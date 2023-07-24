

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "2a62ebed-5ac2-4333-a3e5-98bd7cfe017c-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
