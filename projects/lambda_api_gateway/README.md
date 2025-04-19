# ⚙️ Projeto: Lambda + API Gateway  
Backend Serverless com Função AWS Lambda  
Serverless API using AWS Lambda + API Gateway

Este projeto provisiona uma função Lambda escrita em Python que é exposta via Amazon API Gateway como uma API REST, utilizando Terraform.

This project provisions a Python-based Lambda function and exposes it via Amazon API Gateway, simulating a serverless REST API environment using Terraform.

---

## ✅ Serviços Utilizados

```
| Serviço          | Função                                   |
|------------------|------------------------------------------|
| AWS Lambda       | Execução da função backend               |
| API Gateway      | Exposição da função como API REST        |
| IAM Role         | Permissão de execução da Lambda          |
```
---

## ✅ Estrutura de Arquivos
```
/projects/lambda_api_gateway/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── lambda_function.py
├── README.md
```
---

## 🔧 Pré-deploy: Compactar função
```
zip lambda_function_payload.zip lambda_function.py
```
---

## 🚀 Deploy
```
terraform init
terraform apply -auto-approve
```
---

## 🧪 Teste

Abra a URL fornecida em api_url e veja a mensagem da Lambda.

---

📘 Próximo projeto sugerido:
→ VPC + Subnets + RDS com Terraform
