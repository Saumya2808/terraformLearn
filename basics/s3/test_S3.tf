resource "aws_s3_bucket" "b" {
  bucket = "test-bucket-2801"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

