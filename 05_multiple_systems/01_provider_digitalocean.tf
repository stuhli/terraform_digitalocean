terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "2.30.0"
        }
    }
}

variable "do_token" {}

provider "digitalocean" {
    token = var.do_token
}

data "digitalocean_ssh_key" "digitalocean" {
    name = "digitalocean"
}
