# cara pemanggilan => var.NAMA_VAR / var.region

variable "region" {
    default = "ap-southeast-2"
}

variable "ec2_name" {
    default = "instance-test"
}

variable "ec2_public_ip" {
    default = true
}

