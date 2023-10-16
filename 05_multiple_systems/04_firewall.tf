# external firewall

resource "digitalocean_firewall" "dfirtrackmultiplefw01" {
    name = "dfirtrackmultiplefw01"

    # droplets
    droplet_ids = [
        digitalocean_droplet.dfirtrack01.id,
        digitalocean_droplet.dfirtrack02.id,
        digitalocean_droplet.dfirtrack03.id,
        digitalocean_droplet.dfirtrack04.id,
        digitalocean_droplet.dfirtrack05.id,
        digitalocean_droplet.dfirtrack06.id,
        digitalocean_droplet.dfirtrack07.id,
        digitalocean_droplet.dfirtrack08.id,
        digitalocean_droplet.dfirtrack09.id,
        digitalocean_droplet.dfirtrack10.id,
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

resource "digitalocean_firewall" "dfirtrackmultiplefw02" {
    name = "dfirtrackmultiplefw02"

    # droplets
    droplet_ids = [
        digitalocean_droplet.dfirtrack11.id,
        digitalocean_droplet.dfirtrack12.id,
        digitalocean_droplet.dfirtrack13.id,
        digitalocean_droplet.dfirtrack14.id,
        digitalocean_droplet.dfirtrack15.id,
        digitalocean_droplet.dfirtrack16.id,
        digitalocean_droplet.dfirtrack17.id,
        digitalocean_droplet.dfirtrack18.id,
        digitalocean_droplet.dfirtrack19.id,
        digitalocean_droplet.dfirtrack20.id,
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
