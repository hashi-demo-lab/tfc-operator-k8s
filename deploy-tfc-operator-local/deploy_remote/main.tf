module "tfc-operator" {
    source = "../module"

    organization = "hashi-demos-apj"
    operator_team = "tfc-operator-platform"
    namespace = "app-platform-k8s"
    
}