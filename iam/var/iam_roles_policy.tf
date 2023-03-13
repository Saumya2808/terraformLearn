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
  for_each = var.policies
  role = aws_iam_role.ec2_role.name
  policy_arn = each.value
  
}
  # policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"

