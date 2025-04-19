# 🛠️ Terraform Setup & Example  
Infraestrutura como Código na AWS | Infrastructure as Code on AWS

Este guia apresenta um exemplo prático de uso do Terraform para provisionar recursos na AWS, com foco em modularização e boas práticas.

This guide provides a hands-on example using Terraform to provision AWS resources, focusing on modular structure and best practices.

---

## ✅ Estrutura Inicial do Projeto

```
terraform-aws-lab/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── provider.tf
```
---

## 1️⃣ Inicialização do Ambiente Terraform
```
terraform init
terraform validate
terraform plan
terraform apply
```
---

## 2️⃣ Exemplo: Provisionando EC2, S3 e VPC
provider.tf
```
provider "aws" {
  region = var.aws_region
}
```
variables.tf
```
variable "aws_region" {
  default = "us-east-1"
}
```
main.tf
```
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = "lab-bucket-terraform-demo"
  acl    = "private"
}
```
outputs.tf
```
output "instance_id" {
  value = aws_instance.web.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.lab_bucket.id
}
```
---

##🧹 Limpar Recursos
```
terraform destroy
```
---

## 📊 Boas Práticas com Terraform

| Prática                     | Descrição                                         |
|-----------------------------|---------------------------------------------------|
| Módulos                     | Reutilizar blocos com variáveis e outputs         |
| Separação de arquivos       | Usar `main.tf`, `variables.tf`, `outputs.tf`      |
| Versionamento               | Controlar versões do Terraform e provider AWS     |
| Remote backend (S3)         | Usar S3 + DynamoDB para ambientes colaborativos   |
---

## 📘 Próximo passo sugerido

→ Introdução ao CloudFormation
---
