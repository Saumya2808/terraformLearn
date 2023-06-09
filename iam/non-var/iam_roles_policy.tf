resource "aws_iam_role" "ec2_role" {
  name = "ec2_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_instance_profile" "ec2_role" {
  name = "ec2_role"
  role = aws_iam_role.ec2_role.name
}

resource "aws_iam_role_policy_attachment" "ec2_policy" {
  for_each = {
    "ecr" = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
    "s3" = "arn:aws:iam::aws:policy/AmazonS3FullAccess",
    "rds" = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  }
  role = aws_iam_role.ec2_role.name
  policy_arn = each.value
  
}
# policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"

