resource "aws_vpc" "terralabs_vpc" {
  cidr_block       = var.cidr_block

  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}
