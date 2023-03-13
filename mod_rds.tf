# terraform {
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "4.55.0"
#     }
#   }
# }
# provider "aws" {
#       region     = var.region
#       access_key = var.access_key
#       secret_key = var.secret_key
# }
# resource "aws_db_instance" "test_rds" {
#   identifier             = var.identifier
#   allocated_storage      = var.storage
#   engine                 = var.engine
#   engine_version         = lookup(var.engine_version, var.engine)
#   instance_class         = var.instance_class
#   name                   = var.db_name
#   username               = var.username
#   password               = var.password
#   skip_final_snapshot = true

#   tags = {
#     Name = "test_rds"
#   }
# }

  
# Used with terraform modules  
# module "db" {
#   source  = "terraform-aws-modules/rds/aws"

#   identifier = "mysqldb"

#   engine            = "mysql"
#   engine_version    = "8.0.28"
#   instance_class    = "db.t3.micro"
#   allocated_storage = 5

#   db_name  = "mysqldb"
#   username = "root"
#   password     = "root12345"

#   family = "mysql8.0"
#   major_engine_version = "8.0"


# }