module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 2.5"

    project_id   = var.project
    network_name = "david-network"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "david-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]

 }