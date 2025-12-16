output "ec2_public_ip" {
  description = "Public IP of EC2 instance"
  value       = aws_instance.jenkins_ec2.public_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}

