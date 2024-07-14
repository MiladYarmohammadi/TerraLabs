resource "aws_network_interface" "defaultNIC" {
  subnet_id = var.public_subnet
 
  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}
