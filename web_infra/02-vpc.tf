resource "aws_vpc" "tf_vpc_01" {
  cidr_block           = "172.30.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  instance_tenancy     = "default"

  tags = {
    Name = "tf_vcp_01"
  }
}
