terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

resource "local_file" "example" {
  content  = "Ovo je fajl koji je napravio Terraform!"
  filename = "${path.module}/output.txt"
}