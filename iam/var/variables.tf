variable "region" {
    default     = "ap-northeast-1"
}

variable "ami" {
    default = "ami-0329eac6c5240c99d"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "policies" {
  default = {
    "ecr" = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
    "s3" = "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "rds" = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  }
}