#Public
resource "aws_subnet" "tf_vpc_01_public_subnet" {
  vpc_id                  = aws_vpc.tf_vpc_01.id
  cidr_block              = "172.30.0.0/24"
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "${aws_vpc.tf_vpc_01.id}-public-01"
  }
}


#Private
resource "aws_subnet" "tf_vpc_01_private_subnet" {
  vpc_id                  = aws_vpc.tf_vpc_01.id
  cidr_block              = "172.30.1.0/24"
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "${aws_vpc.tf_vpc_01.id}-private-01"
  }
}
