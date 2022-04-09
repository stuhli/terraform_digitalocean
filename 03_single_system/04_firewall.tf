# external firewall

resource "digitalocean_firewall" "dfirtracksinglefw" {
    name = "dfirtracksinglefw"

    # droplets
    droplet_ids = [
        digitalocean_droplet.dfirtracksingle.id,
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
