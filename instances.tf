resource "aws_instance" "moti" {
ami = var.AMIS[var.AWS_REGION]
instance_type = "t2.micro"
}

resource "aws_instance" "moti2" {
ami = var.AMIS[var.AWS_REGION]
instance_type = "t3.micro"
}

resource "aws_s3_bucket" "b" {
  bucket = "moti-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

