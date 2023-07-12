terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.7.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "server" {
    source = "https://github.com/fegize/etech-team5-base-iac/tree/main/modules/ec2"
    num = 5
    region = "us-east-2"
    ami = ""
}

