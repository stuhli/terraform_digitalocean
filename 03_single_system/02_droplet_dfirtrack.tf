# variables

variable "server_size" {
    type = string
    default = "s-2vcpu-4gb"
}

variable "region" {
    type = string
    default = "fra1"
}

# vpc network

resource "digitalocean_vpc" "dfirtracksinglenetwork" {
    name   = "dfirtracksinglenetwork"
    region = var.region
}

# tags

resource "digitalocean_tag" "dfirtrack" {
    name = "dfirtrack"
}

# droplets

resource "digitalocean_droplet" "dfirtracksingle" {
    image = "ubuntu-22-04-x64"
    name = "dfirtracksingle"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtracksinglenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

# project

resource "digitalocean_project" "single_system" {
    name        = "03_single_system"
    description = "Testing DFIRTrack deployment"
    purpose     = "Web Application"
    environment = "Development"
    resources   = [
        digitalocean_droplet.dfirtracksingle.urn,
    ]
}
