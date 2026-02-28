################################################################################
# VPC Configuration
################################################################################

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "my-vpc"
}

variable "cidr" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

################################################################################
# Availability Zones
################################################################################

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = []
}

################################################################################
# Public Subnets
################################################################################

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "map_public_ip_on_launch" {
  description = "Specify true to indicate that instances launched into the public subnet should be assigned a public IP address"
  type        = bool
  default     = false
}

################################################################################
# Private Subnets
################################################################################

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
}

################################################################################
# Database Subnets
################################################################################

variable "database_subnets" {
  description = "A list of database subnets inside the VPC"
  type        = list(string)
  default     = []
}

variable "create_database_subnet_route_table" {
  description = "Controls if separate route table for database should be created"
  type        = bool
  default     = false
}

################################################################################
# NAT Gateway
################################################################################

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for each of your private networks"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = false
}

variable "one_nat_gateway_per_az" {
  description = "Should be true if you want one NAT Gateway per availability zone. Requires `azs` to be set"
  type        = bool
  default     = false
}

variable "nat_gateway_tags" {
  description = "Additional tags for the NAT Gateways"
  type        = map(string)
  default     = {}
}

################################################################################
# VPN Gateway
################################################################################

variable "enable_vpn_gateway" {
  description = "Should be true if you want to create a new VPN Gateway resource and attach it to the VPC"
  type        = bool
  default     = false
}

variable "vpn_gateway_tags" {
  description = "Additional tags for the VPN Gateway"
  type        = map(string)
  default     = {}
}


################################################################################
# DHCP Options
################################################################################

variable "enable_dhcp_options" {
  description = "Should be true if you want to specify a DHCP options set"
  type        = bool
  default     = false
}

variable "dhcp_options_domain_name" {
  description = "Specifies DNS name for DHCP options set"
  type        = string
  default     = ""
}

variable "dhcp_options_domain_name_servers" {
  description = "Specify a list of DNS server addresses for DHCP options set"
  type        = list(string)
  default     = ["AmazonProvidedDNS"]
}

################################################################################
# Tags
################################################################################

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "vpc_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  type        = map(string)
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  type        = map(string)
  default     = {}
}

variable "database_subnet_tags" {
  description = "Additional tags for the database subnets"
  type        = map(string)
  default     = {}
}
