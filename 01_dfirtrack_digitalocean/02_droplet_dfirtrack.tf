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

resource "digitalocean_vpc" "dfirtrackmultinetwork" {
    name   = "dfirtrackmultinetwork"
    region = var.region
}

# tags

resource "digitalocean_tag" "dfirtrack" {
    name = "dfirtrack"
}

# droplets

resource "digitalocean_droplet" "dfirtrack1804" {
    image = "ubuntu-18-04-x64"
    name = "dfirtrack1804"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultinetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack2004" {
    image = "ubuntu-20-04-x64"
    name = "dfirtrack2004"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultinetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack2204" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack2204"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultinetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack2210" {
    image = "ubuntu-22-10-x64"
    name = "dfirtrack2210"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultinetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

# project

resource "digitalocean_project" "dfirtrack_digitalocean" {
    name        = "01_dfirtrack_digitalocean"
    description = "Testing DFIRTrack deployment"
    purpose     = "Web Application"
    environment = "Development"
    resources   = [
        digitalocean_droplet.dfirtrack1804.urn,
        digitalocean_droplet.dfirtrack2004.urn,
        digitalocean_droplet.dfirtrack2204.urn,
        digitalocean_droplet.dfirtrack2210.urn,
    ]
}
