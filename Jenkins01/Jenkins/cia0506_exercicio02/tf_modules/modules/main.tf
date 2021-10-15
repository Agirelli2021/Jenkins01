module "jenkinsapp" {
    # module source
    source = "./modules/jenkins-app"
    
    # Amazon VPC ID
    vpc_id = "vpc-09e4be7cb2d0c4ff7"
    
    # Amazon subnet ip range
    subnet_cidr = var.subnet_cidr
    
    # SSH Key to access machines
    ssh_key = var.ssh_key

    # jenkinsapp machine name
    app_name = var.app_name

    # Resource tags
    app_tags = var.tags
    
    # App Instance type
    app_instance = var.app_instance

}

resource "null_resource" "getJenkinsPwd" {
    triggers = {
        instance = module.jenkinsapp.jenkins-app
    }
    connection {
        type = "ssh"
        user = "ubuntu"
        private_key = file("${path.module}/modules/jenkins-app/files/slacko")
        host = module.jenkinsapp.jenkins-app
    }
    provisioner "remote-exec" {
    inline = [
        "sleep 300",
        "sudo cat /var/lib/jenkins/secrets/initialAdminPassword",
    ]
  }
}

output "jenkins-ip" {
    value = module.jenkinsapp.jenkins-app
}