terraform {
  required_providers {
    filedemo = {
      source  = "GoneUp/filedemo"
      version = "0.8.0"
    }
  }
}

provider "filedemo" {}

resource "filedemo_file" "a_file" {
  filename = "a_file_v2.txt"
  content  = <<EOT
hello
world!!!
EOT
}

resource "filedemo_file" "another_file" {
  filename = "another_file.txt"
  content  = <<EOT
hello
world!!!

This is a new file
EOT
}
