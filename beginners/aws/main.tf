module "terralabs_vpc" {
  source = "./modules/vpc"
}

module "terralabs_ec2" {
  source = "./modules/ec2"
  public_subnet = module.terralabs_vpc.public_subnet_id
}

module "terralabs_ec2_webserver" {
  source = "./modules/ec2_apache_webserver"
  public_subnet = module.terralabs_vpc.public_subnet_id
}

module "terralabs_static_s3_website" {
  source = "./modules/s3"
  s3_bucket_name = "my-terralabs-test-bucket-name.com"
  aws_profile_name = "{profile_name}"
  document_directory = "./modules/s3/"
}
  
module "terralabs_application_load_balancer" {
  source = "./modules/application_load_balancer"
}
  
module "terralabs_API_Gateway_Cloudwatch" {
  source = "./modules/API_Gateway & Cloudwatch"
}
  
  
