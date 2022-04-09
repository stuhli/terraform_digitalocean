output "jumphost_ip" {
    value = digitalocean_droplet.jumphost.ipv4_address
}

output "jumphost_ip_vpc" {
    value = digitalocean_droplet.jumphost.ipv4_address_private
}

output "dfirtrackintern_ip_vpc" {
    value = digitalocean_droplet.dfirtrackintern.ipv4_address_private
}

output "appliancevpc_range" {
    value = digitalocean_vpc.appliancevpc.ip_range
}
