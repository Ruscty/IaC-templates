terraform {
  required_version = ">= 0.12.19"

  backend "s3" {
    encrypt        = true
    bucket         = "TERRAFORM-BACKEND-BUCKET" #ステートファイルの保存場所を指定
    key            = "terraform.tfstate"
    region         = "ap-northeast-1"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  version = "~> 2.45"
}