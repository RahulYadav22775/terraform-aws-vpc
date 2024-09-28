output "vpc_id" {

  value = aws_vpc.main.id   
}

output "az_info" {

    value = data.aws_availability_zones.az_info
}



output "public_subnet_ids"{
  value = aws_subnet.public_subnets[*].id
}

output "private_subnet_ids"{
  value = aws_subnet.private_subnets[*].id
}

output "database_subnet_ids"{
  value = aws_subnet.database_subnets[*].id
}

# output "default_vpc_info" {
#   value = data.aws_vpc.default
# }

# output "main_route_table_info" {
#   value = data.aws_route_table.main
# }