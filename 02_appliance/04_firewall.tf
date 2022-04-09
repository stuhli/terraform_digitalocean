# external firewall

resource "digitalocean_firewall" "appliancefwextern" {
    name = "appliancefwextern"

    # tag
    tags = [
        digitalocean_tag.extern.id
    ]

    # ICMP everywhere -> inbound
    inbound_rule {
        protocol         = "icmp"
        source_addresses = ["0.0.0.0/0", "::/0"]
    }

    # ICMP outbound -> everywhere
    outbound_rule {
        protocol              = "icmp"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # SSH everywhere -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "22"
        source_addresses = ["0.0.0.0/0", "::/0"]
    }

    # SSH outbound -> VPC
    outbound_rule {
        protocol              = "tcp"
        port_range            = "22"
        destination_addresses = [
            digitalocean_vpc.appliancevpc.ip_range
        ]
    }

    # HTTP outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "80"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # HTTPS outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "443"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # DNS (UDP) outbound -> everywhere
    outbound_rule {
        protocol              = "udp"
        port_range            = "53"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # DNS (TCP) outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "53"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

}

# internal firewall

resource "digitalocean_firewall" "appliancefwintern" {
    name = "appliancefwintern"

    # tag
    tags = [
        digitalocean_tag.intern.id
    ]

    # ICMP VPC -> inbound
    inbound_rule {
        protocol         = "icmp"
        source_addresses = [
            digitalocean_vpc.appliancevpc.ip_range
        ]
    }

    # ICMP outbound -> everywhere
    outbound_rule {
        protocol              = "icmp"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # SSH VPC -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "22"
        source_addresses = [
            digitalocean_droplet.jumphost.ipv4_address_private
        ]
    }

    # HTTP VPC -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "80"
        source_addresses = [
            digitalocean_droplet.jumphost.ipv4_address_private
        ]
    }

    # HTTP outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "80"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # HTTPS VPC -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "443"
        source_addresses = [
            digitalocean_droplet.jumphost.ipv4_address_private
        ]
    }

    # HTTPS outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "443"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # DNS (UDP) outbound -> everywhere
    outbound_rule {
        protocol              = "udp"
        port_range            = "53"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # DNS (TCP) outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "53"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

}
