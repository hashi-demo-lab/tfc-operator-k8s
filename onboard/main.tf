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
  name         = "team1"
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