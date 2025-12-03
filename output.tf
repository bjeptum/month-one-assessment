output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.techcorp_vpc.id
}

output "load_balancer_dns" {
  description = "DNS name of the Load Balancer"
  value       = aws_lb.techcorp_alb.dns_name
}

output "bastion_public_ip" {
  description = "Public IP of the Bastion Host"
  value       = aws_eip.bastion_eip.public_ip
}