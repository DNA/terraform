provider "tfe" {
  token    = var.terraform_user
}

data "tfe_workspace" "hub-prod" {
  name         = "hub-prod"
  organization = "p3coding"
}

resource "tfe_variable" "digitalocean_token" {
  key          = "digitalocean_token"
  value        = ""
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean API token"
}

resource "tfe_variable" "digitalocean_spaces_id" {
  key          = "digitalocean_spaces_id"
  value        = ""
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces ID"
}

resource "tfe_variable" "digitalocean_spaces_key" {
  key          = "digitalocean_spaces_key"
  value        = ""
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces KEY"
}
