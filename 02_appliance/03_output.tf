output "jumphost_ip_public_external" {
    value = digitalocean_droplet.jumphost.ipv4_address
}

output "jumphost_ip_private_internal" {
    value = digitalocean_droplet.jumphost.ipv4_address_private
}

output "dfirtrackintern_ip_private_internal" {
    value = digitalocean_droplet.dfirtrackintern.ipv4_address_private
}

output "appliancenetwork_vpc_range" {
    value = digitalocean_vpc.appliancenetwork.ip_range
}
