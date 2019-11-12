variable "input" {
  default = "DEFAULT"
}

provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = var.input
  }
}

# Forces provider initialization
data "aws_vpc" "default" {
  default = true
}