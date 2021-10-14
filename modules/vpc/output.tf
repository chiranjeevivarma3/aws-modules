output "aws_public_subnet" {
  description = "providing subnet to elb"
  value       = aws_subnet.public.id
}
output "aws_private_subnets" {
  description = "providing subnet to webserver"
  value       = aws_subnet.private[0].id
}

output "vpc_id" {
  description = "providing subnet to elb"
  value       = aws_vpc.demo.id
}
output "aws_mysql_subnet" {
  description = "providing subnet to mysql"
  value       = aws_subnet.private.*.id
}



