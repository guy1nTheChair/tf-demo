provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}

resource "aws_instance" "instance" {
  key_name               = var.key_pair
  ami                    = var.ami_id
  instance_type          = var.instance_type
  user_data              = file("user_data.sh")
  vpc_security_group_ids = var.security_group
  iam_instance_profile   = var.instance_profile
  tags                   = var.tags
}
