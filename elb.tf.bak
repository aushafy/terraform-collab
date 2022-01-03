module "elb_http" {
  source  = "terraform-aws-modules/elb/aws"
  version = "~> 2.0"

  name = "elb-terraform"

  subnets         = ["subnet-bb79e3e3"]
  security_groups = ["sg-c983c6bb","sg-0755013b26a648f57"]
  internal        = false

  listener = [
    {
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
    },
  ]

  health_check = {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  access_logs = {
    bucket = "aushafy-bucket"
  }

  // ELB attachments
  number_of_instances = 3
  instances           = ["${module.ec2-instance[0].id}","${module.ec2-instance[1].id}","${module.ec2-instance[2].id}"]

  tags = {
    Owner       = "user"
    Environment = "dev"
  }
}