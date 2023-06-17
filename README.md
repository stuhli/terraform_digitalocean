# Terraform DigitalOcean

## Projects

### DFIRTrack DigitalOcean

Different Ubuntu versions to test the deployment process of [DFIRTrack](https://github.com/dfirtrack/dfirtrack) or personal Ansible roles.

* Project: `01_dfirtrack_digitalocean`
* VPC: `dfirtrackmultinetwork`
* FW: `dfirtrackmultifw`

| Host          | Droplet           | Size          | Region    | Tags                  |
|:--------------|:------------------|:--------------|:----------|:----------------------|
| dfirtrack1804 | ubuntu-18-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
| dfirtrack2004 | ubuntu-20-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
| dfirtrack2204 | ubuntu-22-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |
| dfirtrack2210 | ubuntu-22-10-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |

### Appliance

A secured system which should only be accessible via a jumphost to test firewalls and VPCs.

* Project: `02_appliance`
* VPC: `appliancenetwork`
* FWs:
    * `appliancefwextern`
    * `appliancefwintern`

| Host              | Droplet           | Size          | Region    | Tags                  |
|:------------------|:------------------|:--------------|:----------|:----------------------|
| jumphost          | ubuntu-22-04-x64  | s-1vcpu-1gb   | FRA1      | extern                |
| dfirtrackintern   | ubuntu-22-04-x64  | s-2vcpu-4gb   | FRA1      | intern, dfirtrack     |

### Single system

A system directly accessible from the Internet to quickly test things or share access.

* Project: `03_single_system`
* VPC: `dfirtracksinglenetwork`
* FW: `dfirtracksinglefw`

| Host              | Droplet           | Size          | Region    | Tags                  |
|:------------------|:------------------|:--------------|:----------|:----------------------|
| dfirtracksingle   | ubuntu-22-04-x64  | s-2vcpu-4gb   | FRA1      | dfirtrack             |

### Droplet test

Multiple systems to test performance of different droplet sizes.

* Project: `04_droplet_test`
* VPC: `dropletmultinetwork`
* FW: `dropletmultifw`

| Host                      | Droplet           | Size                      | Region    | Tags                  |
|:--------------------------|:------------------|:--------------------------|:----------|:----------------------|
| s-2vcpu-4gb               | ubuntu-22-04-x64  | s-2vcpu-4gb               | FRA1      | ---                   |
| s-4vcpu-8gb               | ubuntu-22-04-x64  | s-4vcpu-8gb               | FRA1      | ---                   |
| s-8vcpu-16gb              | ubuntu-22-04-x64  | s-8vcpu-16gb              | FRA1      | ---                   |
| s-2vcpu-4gb-intel         | ubuntu-22-04-x64  | s-2vcpu-4gb-intel         | FRA1      | ---                   |
| s-4vcpu-8gb-intel         | ubuntu-22-04-x64  | s-4vcpu-8gb-intel         | FRA1      | ---                   |
| s-8vcpu-16gb-intel        | ubuntu-22-04-x64  | s-8vcpu-16gb-intel        | FRA1      | ---                   |

## Basic usage

### Preparation

The commands below rely on a environment variable `DO_PAT` containing your _personal access token_ for DigitalOcean. You can make the token available by adding the following line to the file `$HOME/.bashrc`: `export DO_PAT=<PERSONAL_ACCESS_TOKEN>` (or you choose a more secure variant)

### Basic commands

* switch to one of the project folders
* init terraform
    * `terraform init`
    * in case of provider upgrade (e.g. digitalocean 2.X.0 to 2.Y.0): `terraform init -upgrade`
    * else remove `.terraform.lock.hcl` and execute `terraform init` again
* build infra
    * `terraform apply -var "do_token=${DO_PAT}" -auto-approve`
* build infra (alternative)
    * `terraform plan -var "do_token=${DO_PAT}" -out 11_build.tfplan`
    * `terraform apply 11_build.tfplan`
* refresh status
    * `terraform refresh -var "do_token=${DO_PAT}"`
* show status
    * `terraform show`
* get output data (e.g. IPs)
    * `terraform output`
* destroy infra
    * `terraform destroy -var "do_token=${DO_PAT}" -auto-approve`
* destroy infra (alternative)
    * `terraform plan -destroy -var "do_token=${DO_PAT}" -out 12_destroy.tfplan`
    * `terraform apply 12_destroy.tfplan`
