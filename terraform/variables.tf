variable "aws_region" {
  type        = string
  description = "Regiao da AWS para provisionamento"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Ambiente de deploy"
  default     = "staging"
}

variable "instance_type" {
  type        = string
  description = "Tipo da instancia EC2"
  default     = "t2.micro"
}