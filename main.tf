module "sg_wowza" {
  source  = "cloudposse/security-group/aws"
  version = "2.0.1"

  # The VM module already takes care of adding a security group that allows egress traffic
  allow_all_egress = false

  rule_matrix = [
    {
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      key              = "internet-wide-access"
      rules = [
        {
          key         = "https"
          type        = "ingress"
          from_port   = 443
          to_port     = 443
          protocol    = "tcp"
          description = "HTTPS access for all"
        },
        {
          key         = "ssh"
          type        = "ingress"
          from_port   = 22
          to_port     = 22
          protocol    = "tcp"
          description = "SSH access for all"
        },
      ]
    }
  ]

  attributes  = ["spacelift", "poc"]
  environment = "dev"
  delimiter   = "-"

  vpc_id = "vpc-08f94346ca38da91b"
}
