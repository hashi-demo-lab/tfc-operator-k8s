locals {

  tags = {
    Blueprint  = var.cluster_name
    GithubRepo = "github.com/aws-ia/terraform-aws-eks-blueprints"
  }
}

provider "aws" {
  region = var.region
}


module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.16"

  cluster_name                   = var.cluster_name
  cluster_version                = "1.27"
  cluster_endpoint_public_access = true

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  # Fargate profiles use the cluster primary security group so these are not utilized
  create_cluster_security_group = false
  create_node_security_group    = false

  cluster_enabled_log_types = [] #disabling logs for cost - lab only

  fargate_profiles = {
    app_wildcard = {
      selectors = [
        { namespace = "app-*" }
      ]
    }
    kube_system = {
      name = "kube-system"
      selectors = [
        { namespace = "kube-system" }
      ]
    }
  }

  /*   fargate_profile_defaults = {
    iam_role_additional_policies = {
      additional = module.eks_blueprints_addons.fargate_fluentbit.iam_policy[0].arn
    }
  } */

  tags = local.tags
}