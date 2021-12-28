module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.3.0"
  count = 3
  name                          = "${var.ec2_name}-${count.index}"
  associate_public_ip_address   = var.ec2_public_ip
  availability_zone             = "ap-southeast-2c"
  ami                    = "ami-05654370f5b5eb0b0"
  instance_type          = "t2.micro"
  key_name               = "devops-aushafy"
  monitoring             = true
  vpc_security_group_ids = ["sg-c983c6bb","sg-0755013b26a648f57"]
  subnet_id              = "subnet-bb79e3e3"

  tags = {
    Terraform   = "true"
    Environment = "dev"
    CreatedBy   = "Aushafy - DevOps & Infrastructure Dept"
  }
}