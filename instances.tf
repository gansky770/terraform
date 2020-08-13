resource "aws_instance" "moti" {
ami = var.AMIS[var.AWS_REGION]
instance_type = "t2.micro"
}

resource "aws_instance" "moti2" {
ami = var.AMIS[var.AWS_REGION]
instance_type = "t2.micro"
}

resource "aws_security_group_rule" "moti-sec-rule" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = 0.0.0.0/0
  security_group_id = "sg-fc5d87bc"
}

# key pair TODO


# remote exec 
      # "sudo apt-get -y update",
      # "sudo apt-get -y install nginx",
      # "sudo service nginx start",
