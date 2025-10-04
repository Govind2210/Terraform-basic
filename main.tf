# terraform modile import code ------------------
#provider = cloud specigfic providers : GCP / Azure / AWS

terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

# content / code / task -----------------

# some provider need keys: aws / gcp : {...default .. configuaration} secrete key or token 
provider "local" {}

# resource = infrastructure
# filename = hello.txt 
# content = "Hello, Govind! This file was created by Terraform."

resource "local_file" "example" {
  content  = "Hello from PwSkills { v2 }"
  filename = "${path.module}/hello.txt"
}
