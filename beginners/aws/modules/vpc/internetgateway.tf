resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.terralabs_vpc.id

  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}
