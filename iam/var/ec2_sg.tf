resource "aws_instance" "test_ec2" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.test_sg.id]
    iam_instance_profile = aws_iam_instance_profile.ec2_role.name

    tags = {
        Name = "test_ec2"
    }
}

resource "aws_security_group" "test_sg" {
    name = "test_security_groups"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
