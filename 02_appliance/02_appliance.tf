# variables

variable "server_size" {
    type = string
    default = "s-2vcpu-4gb"
}

variable "jumphost_size" {
    type = string
    default = "s-1vcpu-1gb"
}

variable "region" {
    type = string
    default = "fra1"
}

# vpc network

resource "digitalocean_vpc" "appliancenetwork" {
    name   = "appliancenetwork"
    region = var.region
}

# tags

resource "digitalocean_tag" "intern" {
    name = "intern"
}

resource "digitalocean_tag" "extern" {
    name = "extern"
}

resource "digitalocean_tag" "dfirtrack" {
    name = "dfirtrack"
}

# droplets

resource "digitalocean_droplet" "jumphost" {
    image = "ubuntu-22-04-x64"
    name = "jumphost"
    region = var.region
    size = var.jumphost_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.appliancenetwork.id
    tags = [digitalocean_tag.extern.id]
}

resource "digitalocean_droplet" "dfirtrackintern" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrackintern"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.appliancenetwork.id
    tags = [
        digitalocean_tag.intern.id,
        digitalocean_tag.dfirtrack.id
    ]
}

# project

resource "digitalocean_project" "appliance" {
    name        = "02_appliance"
    description = "Testing VPC"
    purpose     = "Appliance"
    environment = "Development"
    resources   = [
        digitalocean_droplet.dfirtrackintern.urn,
        digitalocean_droplet.jumphost.urn
    ]
}
