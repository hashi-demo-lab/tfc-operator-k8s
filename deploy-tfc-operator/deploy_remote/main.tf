module "tfc-operator" {
    source = "../module"

    organization = var.organization
    operator_team = var.operator_team
    namespace = var.namespace
    
}