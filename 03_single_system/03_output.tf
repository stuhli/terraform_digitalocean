output "dfirtrack2004_ip_do2" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address
}

output "dfirtrack2004_ip_vpc" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address_private
}

output "dfirtrack_vpc_range" {
    value = digitalocean_vpc.dfirtracksinglenetwork.ip_range
}
