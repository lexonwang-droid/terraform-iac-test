provider "aws" {
  # Region is typically configured via environment variable or backend config
  # Uncomment and set region if needed:
  # region = "us-east-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.1.0"

  # VPC Configuration
  name                 = var.name
  cidr                 = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_dns_support   = var.enable_dns_support
  instance_tenancy     = var.instance_tenancy

  # Availability Zones
  azs = var.azs

  # Public Subnets
  public_subnets          = var.public_subnets
  map_public_ip_on_launch = var.map_public_ip_on_launch

  # Private Subnets
  private_subnets = var.private_subnets

  # Database Subnets
  database_subnets                   = var.database_subnets
  create_database_subnet_route_table = var.create_database_subnet_route_table

  # NAT Gateway
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  nat_gateway_tags       = var.nat_gateway_tags

  # VPN Gateway
  enable_vpn_gateway = var.enable_vpn_gateway

  # DHCP Options
  enable_dhcp_options              = var.enable_dhcp_options
  dhcp_options_domain_name         = var.dhcp_options_domain_name
  dhcp_options_domain_name_servers = var.dhcp_options_domain_name_servers

  # Tags
  tags                 = var.tags
  vpc_tags             = var.vpc_tags
  public_subnet_tags   = var.public_subnet_tags
  private_subnet_tags  = var.private_subnet_tags
  database_subnet_tags = var.database_subnet_tags
}
