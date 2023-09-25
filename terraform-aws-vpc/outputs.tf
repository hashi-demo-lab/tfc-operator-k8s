output "vpc_id" {
  description = "vpc id"
  value       = module.vpc.default_vpc_id
}

output "private_subnets" {
  description = "private subnet ids"
  value       = module.vpc.private_subnets
}

