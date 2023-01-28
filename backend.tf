terraform {
  backend "s3" {
    bucket         = "database-backend"
    encrypt        = true
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "database-backend"
  }
}