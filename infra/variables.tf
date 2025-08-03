variable "region" {
  description = "Região da AWS para os recursos"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}
