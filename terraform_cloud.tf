provider "tfe" {
  token    = var.terraform_user_token
}

data "tfe_workspace" "hub-prod" {
  name         = "hub-prod"
  organization = "p3coding"
}

resource "tfe_variable" "terraform_user_token" {
  key          = "terraform_user_token"
  value        = var.terraform_user_token
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Terraform Cloud API"
}

resource "tfe_variable" "digitalocean_token" {
  key          = "digitalocean_token"
  value        = var.digitalocean_token
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean API token"
}

resource "tfe_variable" "digitalocean_spaces_id" {
  key          = "digitalocean_spaces_id"
  value        = var.digitalocean_spaces_id
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces ID"
}

resource "tfe_variable" "digitalocean_spaces_key" {
  key          = "digitalocean_spaces_key"
  value        = var.digitalocean_spaces_key
  category     = "terraform"
  workspace_id = data.tfe_workspace.hub-prod.id
  sensitive    = true
  description  = "Digital Ocean Spaces KEY"
}
