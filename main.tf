# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.digitalocean_token}"
}

resource "digitalocean_droplet" "node1" {
  name = "node1"
  image = "centos-7-0-x64"
  private_networking = true
  region = "sgp1"
  size = "512mb"
  ssh_keys = ["${var.ssh_key_id}"]
}

resource "digitalocean_droplet" "node2" {
  name = "node2"
  image = "centos-7-0-x64"
  private_networking = true
  region = "sgp1"
  size = "512mb"
  ssh_keys = ["${var.ssh_key_id}"]
}
