resource "aws_instance" "test_ec2" {
    ami = "ami-0ffac3e16de16665e"
    instance_type = "t2.micro"
}

output "ip" {
    value = aws_instance.test_ec2.public_ip
}
