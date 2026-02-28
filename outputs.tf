################################################################################
# VPC
################################################################################

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_ipv6_cidr_block" {
  description = "The IPv6 CIDR block of the VPC"
  value       = module.vpc.vpc_ipv6_cidr_block
}

output "vpc_default_security_group_id" {
  description = "The ID of the default security group"
  value       = module.vpc.vpc_default_security_group_id
}

output "vpc_default_network_acl_id" {
  description = "The ID of the default network ACL"
  value       = module.vpc.vpc_default_network_acl_id
}

output "vpc_default_route_table_id" {
  description = "The ID of the default route table"
  value       = module.vpc.vpc_default_route_table_id
}

################################################################################
# Subnets
################################################################################

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

output "database_subnets" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnets
}

output "public_subnet_ids" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnet_ids
}

output "database_subnet_ids" {
  description = "List of IDs of database subnets"
  value       = module.vpc.database_subnet_ids
}

################################################################################
# NAT Gateways
################################################################################

output "nat_gateway_ids" {
  description = "List of NAT Gateway IDs"
  value       = module.vpc.nat_gateway_ids
}

output "nat_public_ips" {
  description = "List of public IPs associated with NAT Gateways"
  value       = module.vpc.nat_public_ips
}


################################################################################
# VPN Gateway
################################################################################

output "vpn_gateway_id" {
  description = "The ID of the VPN Gateway"
  value       = module.vpc.vpn_gateway_id
}

################################################################################
# Route Tables
################################################################################

output "public_route_table_ids" {
  description = "List of IDs of public route tables"
  value       = module.vpc.public_route_table_ids
}

output "private_route_table_ids" {
  description = "List of IDs of private route tables"
  value       = module.vpc.private_route_table_ids
}

output "database_route_table_ids" {
  description = "List of IDs of database route tables"
  value       = module.vpc.database_route_table_ids
}

################################################################################
# Database Subnet Group
################################################################################

output "database_subnet_group_id" {
  description = "The ID of the database subnet group"
  value       = module.vpc.database_subnet_group_id
}

output "database_subnet_group_name" {
  description = "The name of the database subnet group"
  value       = module.vpc.database_subnet_group_name
}
