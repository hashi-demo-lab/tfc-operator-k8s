######################
##  TFE/TFC config
######################

data "tfe_organization" "this" {
  name = var.organization
}

resource "tfe_project" "operator" {
  organization = data.tfe_organization.this.name
  name         = var.operator_team
}

resource "tfe_variable_set" "operator" {
  name         = "${tfe_project.operator.name}-varset"
  description  = "TFC variables for project"
  organization = data.tfe_organization.this.name
}

resource "tfe_team" "operator" {
  name       = tfe_project.operator.name
  visibility = "organization"
  organization_access {
    manage_workspaces = true
  }
  organization = data.tfe_organization.this.name
}

resource "tfe_team_project_access" "admin" {
  access     = "admin"
  team_id    = tfe_team.operator.id
  project_id = tfe_project.operator.id
}

resource "tfe_team_token" "operator" {
  team_id = tfe_team.operator.id
}

resource "tfe_project_variable_set" "tfc-operator" {
  project_id      = tfe_project.operator.id
  variable_set_id = tfe_variable_set.operator.id
}

resource "tfe_variable" "tfe-token" {
  key             = "TFE_TOKEN"
  value           = tfe_team_token.operator.token
  category        = "env"
  sensitive       = true
  description     = "TFE_TOKEN enviroment variable for admin project."
  variable_set_id = tfe_variable_set.operator.id
}

######################
##  K8s config
######################

# create K8s namespace
resource "kubernetes_namespace" "operator" {
  metadata {
    name = var.namespace
  }
}

# create K8s secret for TFE token
resource "kubernetes_secret" "operator" {
  metadata {
    name      = "tfc-operator"
    namespace = kubernetes_namespace.operator.metadata[0].name
  }

  data = {
    token = "${tfe_team_token.operator.token}"
  }
}

# Terraform Cloud Operator for K8s helm chart
resource "helm_release" "operator" {
  name       = "terraform-cloud-operator"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "terraform-cloud-operator"
  version    = "2.0.0-beta8"
  namespace  = kubernetes_secret.operator.metadata[0].namespace
  devel      = "true" #allow beta chart

}
