module "immutable-app-ami" {
  source = "github.com/GurukaYadav/immutable-app-ami.git"
  COMPONENT = "cart"
  TAG_NAME = var.TAG_NAME
}

variable "TAG_NAME" {}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-sfiles"
    key    = "ami/cart/terraform.tfstate"
    region = "us-east-1"
  }
}
