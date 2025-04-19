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

## ✅ Estrutura de Arquivos
```
/projects/static_web_s3_cloudfront/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
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
