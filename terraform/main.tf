terraform {
  required_providers {
    linode = {
      source = "linode/linode"
      version = "2.5.2"
    }
  }
}


provider "linode" {
  token = var.linode_token
}

resource "linode_instance" "main" {
        image = "linode/ubuntu24.04"
        label = "tf-linode-demo"
        group = "Terraform"
        region = "us-east"
        type = "g6-nanode-1"
        authorized_keys = [chomp(file("~/.ssh/id_rsa.pub"))]
#         root_pass = ""
}