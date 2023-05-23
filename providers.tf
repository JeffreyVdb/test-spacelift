provider "aws" {
  region = "eu-west-1"

  assume_role_with_web_identity {
    role_arn                = var.aws_assume_role_arn
    web_identity_token_file = "/mnt/workspace/spacelift.oidc"
  }

  default_tags {
    tags = {
      POC     = "spacelift"
      ROLE    = "spacelift"
      contact = "Jeffrey Vandenborne"
    }
  }
}
