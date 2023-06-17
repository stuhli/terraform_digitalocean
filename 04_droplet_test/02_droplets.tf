# variables

variable "region" {
    type = string
    default = "fra1"
}

# vpc network

resource "digitalocean_vpc" "dropletmultinetwork" {
    name   = "dropletmultinetwork"
    region = var.region
}

# droplets

resource "digitalocean_droplet" "s-2vcpu-4gb" {
    image = "ubuntu-22-04-x64"
    name = "s-2vcpu-4gb"
    region = var.region
    size = "s-2vcpu-4gb"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

resource "digitalocean_droplet" "s-4vcpu-8gb" {
    image = "ubuntu-22-04-x64"
    name = "s-4vcpu-8gb"
    region = var.region
    size = "s-4vcpu-8gb"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

resource "digitalocean_droplet" "s-8vcpu-16gb" {
    image = "ubuntu-22-04-x64"
    name = "s-8vcpu-16gb"
    region = var.region
    size = "s-8vcpu-16gb"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

resource "digitalocean_droplet" "s-2vcpu-4gb-intel" {
    image = "ubuntu-22-04-x64"
    name = "s-2vcpu-4gb-intel"
    region = var.region
    size = "s-2vcpu-4gb-intel"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

resource "digitalocean_droplet" "s-4vcpu-8gb-intel" {
    image = "ubuntu-22-04-x64"
    name = "s-4vcpu-8gb-intel"
    region = var.region
    size = "s-4vcpu-8gb-intel"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

resource "digitalocean_droplet" "s-8vcpu-16gb-intel" {
    image = "ubuntu-22-04-x64"
    name = "s-8vcpu-16gb-intel"
    region = var.region
    size = "s-8vcpu-16gb-intel"
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dropletmultinetwork.id
}

# project

resource "digitalocean_project" "droplet_test" {
    name        = "04_droplet_test"
    description = "Testing droplet performance"
    purpose     = "Web Application"
    environment = "development"
    resources   = [
        digitalocean_droplet.s-2vcpu-4gb.urn,
        digitalocean_droplet.s-4vcpu-8gb.urn,
        digitalocean_droplet.s-8vcpu-16gb.urn,
        digitalocean_droplet.s-2vcpu-4gb-intel.urn,
        digitalocean_droplet.s-4vcpu-8gb-intel.urn,
        digitalocean_droplet.s-8vcpu-16gb-intel.urn,
    ]
}
