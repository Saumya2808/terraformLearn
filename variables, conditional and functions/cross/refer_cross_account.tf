resource "aws_instance" "test_ec2" {
    ami = "ami-0329eac6c5240c99d"
    instance_type = "t2.micro"
}

resource "aws_eip" "test_eip" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.test_ec2.id
  allocation_id = aws_eip.test_eip.id
}

resource "aws_security_group" "allow_tls" {
    name = "test_security_groups"

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"

        cidr_blocks = ["${aws_eip.test_ip.public_ip}/32"]
    }
}
