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

I have modified it!
EOT
}

## remote state

resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "default" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  project       = "data-dev-337414"
  force_destroy = false
  location      = "EU"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

terraform {
  backend "gcs" {
    bucket = "3d23ece0005d2833-bucket-tfstate"
    prefix = "terraform/state"
  }
}
