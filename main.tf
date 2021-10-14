module "vpc" {
  source = "./modules/vpc"
  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = "10.0.3.0/24"
  
  
  }


module "ec2" {
  source = "./modules/ec2"
  mysql_instance_type = "db.t2.micro"
  allocated_storage = 30
  database_name = "chiru"
  database_username = "admin"
  database_password = "chiru123demo"
  webserver_instance_type = "t2.micro"
  root_volume_size = 20
  aws_subnet_public = module.vpc.aws_public_subnet
  vpc_id = module.vpc.vpc_id
  aws_private_subnet = module.vpc.aws_private_subnets
  elb_dnsname = module.ec2.elb_dnsname
  elb_zoneid = module.ec2.elb_zoneid
  aws_mysql_subnet = module.vpc.aws_mysql_subnet


  }



