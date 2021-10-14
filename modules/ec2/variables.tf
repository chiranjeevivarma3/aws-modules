
variable "mysql_instance_type" {
  description = "RDS mysql instance type"
  type        = string
  default     = "db.t2.micro"
}
variable "allocated_storage" {
  description = "RDS mysql allocation size"
  type        = string
  default     = null
}
variable "database_name" {
  description = "RDS Mysql DB name to create"
  type        = string
  default     = null
}
variable "database_username" {
  description = "Username for the master DB user"
  type        = string
  default     = null
}
variable "database_password" {
  description = "Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file"
  type        = string
  default     = null
}
variable "webserver_instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = null
}
variable "root_volume_size" {
  description = "Volume size of root volumen of Web Server"
  type        = number
  default     = null
}
variable "aws_subnet_public" {
  description = "Elb subnet"
  type        = string
}
variable "vpc_id" {
  description = "vpc id"
  type        = string
}
variable "aws_private_subnet" {
  description = "private subnet for webserver"
  type        = string
}

variable "elb_dnsname" {
  description = "Assigns IPv6 private subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = string
  
}
variable "elb_zoneid" {
  description = "Assigns IPv6 private subnet id based on the Amazon provided /56 prefix base 10 integer (0-256). Must be of equal length to the corresponding IPv4 subnet list"
  type        = string
}
variable "aws_mysql_subnet" {
  description = "mysql subnet"
  type        = list(string)
}

