variable "instance_type" {
   type = map(any)

   default = {
      default = "t2.nano"
      dev = "t2.micro"
      prod = "t2.large"
   }
}

locals {
   ins_name = "${terraform.workspace}-ec2"
}

resource "aws_instance" "ec2" {
   ami = "ami-0329eac6c5240c99d"
   instance_type = lookup(var.instance_type,terraform.workspace)

   tags = {
      Name = local.ins_name
   }
}
