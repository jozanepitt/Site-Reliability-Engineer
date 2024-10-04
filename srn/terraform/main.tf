provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_eks_cluster" "my_cluster" {
  name     = "SRE-Test-cluster"
  role_arn = aws_iam_role.eks_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.my_subnet.id]
  }
}

resource "aws_db_instance" "my_db" {
  allocated_storage    = 20
  engine               = "postgres"
  instance_class       = "db.t3.micro"
  name                 = "mydatabase"
  username             = "admin"
  password             = "supersecret"
  parameter_group_name = "default.postgres12"
}
