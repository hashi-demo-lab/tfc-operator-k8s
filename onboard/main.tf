######################
##  TFE config
######################

data "tfe_organization" "this" {
  name = "hashi-demos-apj"
}

resource "tfe_project" "operator" {
  organization = data.tfe_organization.this.name
  name         = "team1-project-a"
}

resource "tfe_variable_set" "operator" {
  name         = "${tfe_project.operator.name}-varset"
  description  = "TFC variables for project"
  organization = data.tfe_organization.this.name
}

resource "tfe_team" "operator" {
  name         = tfe_project.operator.name
  visibility   = "organization"
  organization = data.tfe_organization.this.name
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
    name = tfe_project.operator.name
  }
}


# create K8s secret for TFE token
resource "kubernetes_secret" "terraformrc" {
  metadata {
    name      = "terraformrc"
    namespace = kubernetes_namespace.operator.metadata[0].name
  }

  data = {
    "credentials" = <<EOT
credentials app.terraform.io {
  token = "${tfe_team_token.operator.token}"
}
EOT
  }
}


// Terraform Cloud Operator for K8s helm chart
resource "helm_release" "operator" {
  name       = "terraform-cloud-operator"
  repository = "https://helm.releases.hashicorp.com" 
  chart      = "terraform-cloud-operator"
  version    = "2.0.0-beta8"
  namespace = kubernetes_secret.terraformrc.metadata[0].namespace
  devel = "true" #allow beta chart

}
