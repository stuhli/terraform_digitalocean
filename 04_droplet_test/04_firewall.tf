# external firewall

resource "digitalocean_firewall" "dropletmultifw" {
    name = "dropletmultifw"

    # droplets
    droplet_ids = [
        digitalocean_droplet.s-2vcpu-4gb.id,
        digitalocean_droplet.s-4vcpu-8gb.id,
        digitalocean_droplet.s-8vcpu-16gb.id,
        digitalocean_droplet.s-2vcpu-4gb-intel.id,
        digitalocean_droplet.s-4vcpu-8gb-intel.id,
        digitalocean_droplet.s-8vcpu-16gb-intel.id,
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
