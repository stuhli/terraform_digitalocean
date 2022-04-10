# Terraform DigitalOcean

## DFIRTrack DigitalOcean

* Project: 01_dfirtrack_digitalocean
* VPC: dfirtrackmultinetwork
* FW: dfirtrackmultifw

| Host          | Droplet           | Size          | Region    | Tags                  |
|:--------------|:------------------|:--------------|:----------|:----------------------|
| dfirtrack1804 | ubuntu-18-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
| dfirtrack2004 | ubuntu-20-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
| dfirtrack2110 | ubuntu-21-10-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |

## Appliance

* Project: 02_appliance
* VPC: appliancenetwork
* FWs:
    * appliancefwextern
    * appliancefwintern

| Host              | Droplet           | Size          | Region    | Tags                  |
|:------------------|:------------------|:--------------|:----------|:----------------------|
| jumphost          | ubuntu-20-04-x64  | s-1vcpu-1gb   | FRA1      | extern                |
| dfirtrackintern   | ubuntu-20-04-x64  | s-2vcpu-4gb   | FRA1      | intern, dfirtrack     |

## Single system

* Project: 03_single_system
* VPC: dfirtracksinglenetwork
* FW: dfirtracksinglefw

| Host              | Droplet           | Size          | Region    | Tags                  |
|:------------------|:------------------|:--------------|:----------|:----------------------|
| dfirtracksingle   | ubuntu-20-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
