output "dfirtrack1804_ip_public" {
    value = digitalocean_droplet.dfirtrack1804.ipv4_address
}

output "dfirtrack2004_ip_public" {
    value = digitalocean_droplet.dfirtrack2004.ipv4_address
}

output "dfirtrack2204_ip_public" {
    value = digitalocean_droplet.dfirtrack2204.ipv4_address
}

output "dfirtrack2210_ip_public" {
    value = digitalocean_droplet.dfirtrack2210.ipv4_address
}

output "dfirtrack1804_ip_private" {
    value = digitalocean_droplet.dfirtrack1804.ipv4_address_private
}

output "dfirtrack2004_ip_private" {
    value = digitalocean_droplet.dfirtrack2004.ipv4_address_private
}

output "dfirtrack2204_ip_private" {
    value = digitalocean_droplet.dfirtrack2204.ipv4_address_private
}

output "dfirtrack2210_ip_private" {
    value = digitalocean_droplet.dfirtrack2210.ipv4_address_private
}

output "dfirtrackmultinetwork_vpc_range" {
    value = digitalocean_vpc.dfirtrackmultinetwork.ip_range
}
