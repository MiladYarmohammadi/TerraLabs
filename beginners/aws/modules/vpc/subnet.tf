resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.terralabs_vpc.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = "true"

  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}

resource "aws_subnet" "privatesubnet" {
  vpc_id     = aws_vpc.terralabs_vpc.id
  cidr_block =  var.private_subnet_cidr

  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}
