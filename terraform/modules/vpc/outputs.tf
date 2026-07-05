output "vpc_id" {
  description = "ID of the VPC"

  value = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR Block of the VPC"

  value = aws_vpc.main.cidr_block
}
output "internet_gateway_id" {
  description = "Internet Gateway ID"

  value = aws_internet_gateway.igw.id
}
output "public_subnet_ids" {
  description = "Public Subnet IDs"

  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"

  value = aws_subnet.private[*].id
}
