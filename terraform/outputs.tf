output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.devops_vpc.id
}

output "instance_public_ip" {
  description = "IP publico da instancia da aplicacao"
  value       = aws_instance.app_server.public_ip
}