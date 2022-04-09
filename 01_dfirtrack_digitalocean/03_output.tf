output "dfirtrack1804_ip_public" {
    value = digitalocean_droplet.dfirtrack1804.ipv4_address
}

output "dfirtrack2004_ip_public" {
    value = digitalocean_droplet.dfirtrack2004.ipv4_address
}

output "dfirtrack2110_ip_public" {
    value = digitalocean_droplet.dfirtrack2110.ipv4_address
}

output "dfirtrack1804_ip_vpc" {
    value = digitalocean_droplet.dfirtrack1804.ipv4_address_private
}

output "dfirtrack2004_ip_vpc" {
    value = digitalocean_droplet.dfirtrack2004.ipv4_address_private
}

output "dfirtrack2110_ip_vpc" {
    value = digitalocean_droplet.dfirtrack2110.ipv4_address_private
}

output "dfirtrack_vpc_range" {
    value = digitalocean_vpc.dfirtracknetwork.ip_range
}
