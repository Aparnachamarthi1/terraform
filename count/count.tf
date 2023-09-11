resource "aws_instance" "conditions" {
  count = 10
  ami = var.ami_id #devops-practice in us-east-1
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "record" {
   count = 10
   zone_id = var.Zone_id
   name = "${var.instance_names[count.index]}.${var.domain}"
   type  = "A"
   ttl  = 1
   records = [aws_instance.conditions[count.index].private_ip]
}

resource "aws_key_pair" "deployer" {
   key_name = "aws-pub"
   public_key = file("${path.module}/aws.pub")
}

resource "aws_instance" "file-function" {
  ami = var.ami_id #devops-practice in us-east-1
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name
  
}



