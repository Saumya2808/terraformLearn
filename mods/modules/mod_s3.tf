resource "aws_s3_bucket" "b" {
  bucket = "test-bucket-2801"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# Terraform pre-built module 
# module "s3_bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#  bucket = "s32808"
# }