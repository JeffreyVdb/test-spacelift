provider "aws" {
  region = "eu-west-1"

  assume_role {
    role_arn = var.aws_assume_role_arn
  }

  default_tags {
    tags = {
      POC     = "spacelift"
      ROLE    = "spacelift"
      contact = "Jeffrey Vandenborne"
    }
  }
}
