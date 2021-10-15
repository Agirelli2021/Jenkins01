variable "vpc_id" {
    type = string
}

variable "subnet_cidr" {
    type = string 
    default = "10.0.102.0/24"
}

variable "ssh_key" {
    type = string
    default =  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNd60XfmtlyoQrI7Uy7q+JeN44RCe+aPhDT+00KNAvHGUuFY9M5sIYE9/iD+tBInvEzz/SxAGnPdusO0quzEcDKe7FZzd1NZb23WbNHRF7HtvbUL3+pLUBAskQj8i1fZ+Dfku1H4v/k0YwxAGU5HlJDZhfNhoRgABLOEu87LDRRwdrvBCtoRwMuGrz+r8cbm5VzZGhNBPG0OgHlMXDdHWGiZIi7LepCdkMTRLOHC1OE/2hjgpPgpm//dA0WNERrakcIFn5CH8m0o5q17p19k+Hr7PhMWO1sdHp5cdlbgHiZf/l7m5rX0XBXW76XzjJMkfP6ohS5WFHeY711FlcuIVDj6OwMbWVCsD6oFGprnUkq36STKE6UD/VMmtgWfDKXBEohvGTCJx85sx/AeGEBmTKsv2Jr/oSFVAP00S+q9wmqQFQFTG8KHs0SLj7kLXLg3CzzkYZnV/bUIGbX1ZzYD/fNOREWI3BIuBe3arUv5tPXjFFDmEgpqbE0W1zdNPPUbM= vagrant@iaac-station"
}

variable "app_name" {
    type = string
    default = "jenkins"
}
variable "app_instance" {
    type = string
    default = "t3.medium"
}

variable "app_tags" {
    default = {
        env = "prod"
        project = "slack"
        customer = "cliente1"
    }
}