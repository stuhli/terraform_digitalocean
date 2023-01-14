# external firewall

resource "digitalocean_firewall" "dfirtrackmultifw" {
    name = "dfirtrackmultifw"

    # droplets
    droplet_ids = [
        digitalocean_droplet.dfirtrack1804.id,
        digitalocean_droplet.dfirtrack2004.id,
        digitalocean_droplet.dfirtrack2204.id,
        digitalocean_droplet.dfirtrack2210.id,
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

    # HTTP everywhere -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "80"
        source_addresses = ["0.0.0.0/0", "::/0"]
    }

    # HTTP outbound -> everywhere
    outbound_rule {
        protocol              = "tcp"
        port_range            = "80"
        destination_addresses = ["0.0.0.0/0", "::/0"]
    }

    # HTTPS everywhere -> inbound
    inbound_rule {
        protocol         = "tcp"
        port_range       = "443"
        source_addresses = ["0.0.0.0/0", "::/0"]
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
