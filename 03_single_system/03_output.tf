output "dfirtracksingle_ip_public_external" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address
}

output "dfirtrackprivate_ip_private_internal" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address_private
}

output "dfirtracksinglenetwork_vpc_range" {
    value = digitalocean_vpc.dfirtracksinglenetwork.ip_range
}
