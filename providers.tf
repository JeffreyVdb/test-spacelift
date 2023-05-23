provider "aws" {
  region = "eu-west-1"

  assume_role {
    role_arn = var.aws_assume_role_arn
  }
}
