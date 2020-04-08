provider "digital_ocean" {
  token = var.digitalocean_token
  spaces_access_id = var.digitalocean_spaces_id
  spaces_secret_key = var.digitalocean_spaces_key
}

resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "terraform-test-1"
  region = "nyc2"
  size   = "s-1vcpu-1gb"
}