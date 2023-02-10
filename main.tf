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
  filename = "a_file.txt"
  content  = <<EOT
hello
world!!!
EOT
}
