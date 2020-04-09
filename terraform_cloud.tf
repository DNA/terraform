provider "tfe" {
  token    = var.terraform_user
}

resource "tfe_organization" "p3coding" {
  name  = "p3coding"
  email = "leonardoprado@gmail.com"
}

resource "tfe_workspace" "hub-prod" {
  name         = "hub-prod"
  organization = tfe_organization.p3coding.id
}

resource "tfe_variable" "digitalocean_token" {
  key          = "digitalocean_token"
  value        = ""
  category     = "terraform"
  workspace_id = tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean API token"
}

resource "tfe_variable" "digitalocean_spaces_id" {
  key          = "digitalocean_spaces_id"
  value        = ""
  category     = "terraform"
  workspace_id = tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces ID"
}

resource "tfe_variable" "digitalocean_spaces_key" {
  key          = "digitalocean_spaces_key"
  value        = ""
  category     = "terraform"
  workspace_id = tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces KEY"
}
