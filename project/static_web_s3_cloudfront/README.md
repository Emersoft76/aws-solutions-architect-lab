# 🏗️ Projeto: Static Web com S3 + CloudFront  
Hospedagem Global de Site Estático na AWS  
Static Website Hosting on AWS with Terraform

Este projeto provisiona automaticamente uma infraestrutura para hospedagem de um site estático com Amazon S3 e distribuição global via CloudFront, com HTTPS.

This project automatically provisions a static website hosting infrastructure using Amazon S3 + CloudFront, with HTTPS and caching for global access.

---

## 🚀 Serviços AWS Utilizados

- **S3**: Armazenamento de arquivos estáticos (HTML, CSS, JS)
- **CloudFront**: CDN com HTTPS
- **Route 53 (opcional)**: Custom domain (não configurado por padrão)

---

## 🛠️ Pré-requisitos

```markdown
| Requisito        | Descrição                                |
|------------------|------------------------------------------|
| AWS CLI          | Autenticado com `aws configure`          |
| Terraform v1.4+  | Instalado e funcionando (`terraform -v`) |
| Arquivos do site | Um index.html simples para testar        |
```
---

## 📁 Estrutura de Arquivos Terraform
```
# main.tf
provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "site" {
  bucket = var.bucket_name
  website {
    index_document = "index.html"
  }
  acl = "public-read"
}

resource "aws_s3_bucket_policy" "allow_public" {
  bucket = aws_s3_bucket.site.id
  policy = jsonencode({
    Statement = [{
      Effect    = "Allow"
      Principal = "*"
      Action    = ["s3:GetObject"]
      Resource  = "${aws_s3_bucket.site.arn}/*"
    }]
  })
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.site.website_endpoint
    origin_id   = "s3Origin"
    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
    }
  }

  enabled             = true
  default_root_object = "index.html"
  default_cache_behavior {
    target_origin_id       = "s3Origin"
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD"]
    cached_methods         = ["GET", "HEAD"]
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
}
```
---

## 📄 variables.tf
```
variable "region" {
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Nome do bucket S3"
}
```
---

## 📄 terraform.tfvars
```
bucket_name = "meusite-estatico-demo"
```
---

## 📄 outputs.tf
```  
output "site_url" {
  value = aws_s3_bucket.site.website_endpoint
}

output "cdn_url" {
  value = aws_cloudfront_distribution.cdn.domain_name
}
```
---

## ✅ Deploy
```
terraform init
terraform plan
terraform apply -auto-approve
```
---

## 🧪 Teste

1. Faça upload de um index.html para o bucket:
```
aws s3 cp index.html s3://meusite-estatico-demo/
```
2. Acesse a URL do CloudFront ou S3 retornada nos outputs.
---

📘 Próximo projeto sugerido:
→ EC2 com Auto Scaling e Load Balancer
