module "vpc" {
    source  = "app.terraform.io/fastly-ibissett/network/google"
    version = "3.4.0"

    project_id   = var.project
    network_name = "gaurav-network"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "guarav-subnet"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        },
    ]
}
