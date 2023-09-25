output "vpc_id" {
  description = ""
  value       = module.vpc.default_vpc_id
}

output "private_subnets" {
  description = ""
  value       = module.vpc.private_subnets
}

