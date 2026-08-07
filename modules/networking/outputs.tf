output "vpc_id" {

  description = "VPC ID"

  value = aws_vpc.this.id

}



output "vpc_cidr" {

  description = "VPC CIDR block"

  value = aws_vpc.this.cidr_block

}



output "public_subnet_id" {

  description = "Public subnet ID"

  value = aws_subnet.public.id

}



output "internet_gateway_id" {

  description = "Internet Gateway ID"

  value = aws_internet_gateway.this.id

}



output "public_route_table_id" {

  description = "Public route table ID"

  value = aws_route_table.public.id

}