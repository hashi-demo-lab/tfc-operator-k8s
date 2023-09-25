output "argo_workflows" {
  description = "Map of attributes of the Helm release created"
  value       = module.argo_workflows
}

output "aws_load_balancer_controller" {
  description = "Map of attributes of the Helm release and IRSA created"
  value       = module.aws_load_balancer_controller
}
