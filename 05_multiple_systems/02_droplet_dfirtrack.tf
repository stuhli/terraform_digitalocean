# variables

variable "server_size" {
    type = string
    default = "s-1vcpu-512mb-10gb"
}

variable "region" {
    type = string
    default = "fra1"
}

# vpc network

resource "digitalocean_vpc" "dfirtrackmultiplenetwork" {
    name   = "dfirtrackmultiplenetwork"
    region = var.region
}

# tags

resource "digitalocean_tag" "dfirtrack" {
    name = "dfirtrack"
}

# droplets

resource "digitalocean_droplet" "dfirtrack01" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack01"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack02" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack02"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack03" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack03"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack04" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack04"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack05" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack05"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack06" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack06"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack07" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack07"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack08" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack08"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack09" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack09"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack10" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack10"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack11" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack11"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack12" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack12"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack13" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack13"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack14" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack14"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack15" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack15"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack16" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack16"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack17" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack17"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack18" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack18"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack19" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack19"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

resource "digitalocean_droplet" "dfirtrack20" {
    image = "ubuntu-22-04-x64"
    name = "dfirtrack20"
    region = var.region
    size = var.server_size
    ssh_keys = [data.digitalocean_ssh_key.digitalocean.id]
    vpc_uuid = digitalocean_vpc.dfirtrackmultiplenetwork.id
    tags = [digitalocean_tag.dfirtrack.id]
}

# project

resource "digitalocean_project" "multiple_systems" {
    name        = "05_multiple_systems"
    description = "DFIRTrack workshop"
    purpose     = "Web Application"
    environment = "Development"
    resources   = [
        digitalocean_droplet.dfirtrack01.urn,
        digitalocean_droplet.dfirtrack02.urn,
        digitalocean_droplet.dfirtrack03.urn,
        digitalocean_droplet.dfirtrack04.urn,
        digitalocean_droplet.dfirtrack05.urn,
        digitalocean_droplet.dfirtrack06.urn,
        digitalocean_droplet.dfirtrack07.urn,
        digitalocean_droplet.dfirtrack08.urn,
        digitalocean_droplet.dfirtrack09.urn,
        digitalocean_droplet.dfirtrack10.urn,
        digitalocean_droplet.dfirtrack11.urn,
        digitalocean_droplet.dfirtrack12.urn,
        digitalocean_droplet.dfirtrack13.urn,
        digitalocean_droplet.dfirtrack14.urn,
        digitalocean_droplet.dfirtrack15.urn,
        digitalocean_droplet.dfirtrack16.urn,
        digitalocean_droplet.dfirtrack17.urn,
        digitalocean_droplet.dfirtrack18.urn,
        digitalocean_droplet.dfirtrack19.urn,
        digitalocean_droplet.dfirtrack20.urn,
    ]
}
