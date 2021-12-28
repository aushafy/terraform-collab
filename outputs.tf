output "ec2_public_ip" {
    description = "Here is the IP Private"
    value = module.ec2-instance[0].public_ip
}

output "ec2_public_dns" {
    value = module.ec2-instance[0].public_dns
}

output "ec2_public_ip_1" {
    description = "Here is the IP Private"
    value = module.ec2-instance[1].public_ip
}

output "ec2_public_dns_1" {
    value = module.ec2-instance[1].public_dns
}