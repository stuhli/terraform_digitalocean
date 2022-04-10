output "dfirtracksingle_ip_public" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address
}

output "dfirtrackprivate_ip_private" {
    value = digitalocean_droplet.dfirtracksingle.ipv4_address_private
}

output "dfirtracksinglenetwork_vpc_range" {
    value = digitalocean_vpc.dfirtracksinglenetwork.ip_range
}
