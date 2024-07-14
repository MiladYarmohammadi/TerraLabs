resource "aws_network_interface" "webserverNIC" {
  subnet_id = var.public_subnet
 
  tags = {
    project = "TerraLabs"
    department = "Automation"
  }
}
