terraform {
  backend "s3" {
    bucket = "my-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-table-name"
    encrypt = true
  }
}