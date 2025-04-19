# 🌐 AWS CLI + Terraform + CloudFormation Setup  
Configuração do Ambiente | Environment Setup Guide

Este guia apresenta os passos para instalar e configurar o ambiente local com AWS CLI, Terraform e CloudFormation, tanto no Windows quanto no Linux.

This guide explains how to install and configure your local environment with AWS CLI, Terraform, and CloudFormation — on both Windows and Linux.

---

## ✅ Pré-requisitos / Requirements

- Conta AWS (Free Tier)
- Acesso ao IAM com permissão de AdministratorAccess (temporário)
- Editor recomendado: [Visual Studio Code](https://code.visualstudio.com/)

---

## 🔧 Instalação da AWS CLI

### Linux

```bash
sudo apt update && sudo apt install awscli -y
aws --version
```
Windows

1. Baixe o instalador:
   https://aws.amazon.com/cli

2. Após instalar, verifique com:
```bash
aws --version
```
---
Configuração da AWS CLI
```bash
aws configure
```
---
Insira as credenciais IAM:
```bash
AWS Access Key ID: ***************
AWS Secret Access Key: ***************
Default region name: us-east-1
Default output format: json
```
---

## 🌍 Instalação do Terraform
Linux
```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update
sudo apt install terraform
terraform -version
```
Windows

1. Baixe o zip do Terraform:
   https://developer.hashicorp.com/terraform/downloads
2. Extraia e adicione ao PATH do sistema
---

## 🧩 CloudFormation (sem instalação)

O CloudFormation é utilizado diretamente via AWS Console ou pela AWS CLI:
```bash
aws cloudformation deploy \
  --template-file template.yaml \
  --stack-name exemplo-stack \
  --capabilities CAPABILITY_NAMED_IAM
```
---

## ✅ Validação do Ambiente
```bash
aws sts get-caller-identity   # Teste de credencial AWS
terraform version             # Verifica versão instalada
```
---

## 🛠️ Sugestões de IDEs e Extensões

🛠️ Sugestões de IDEs e Extensões
| Ferramenta        | Uso                                 |
|-------------------|--------------------------------------|
| VS Code           | Edição principal de código           |
| Terraform Plugin  | Syntax Highlight + Lint para `.tf`  |
| AWS Toolkit       | Integração com serviços AWS no VS Code |

---

📘 Próximo passo sugerido:
→ Configuração de Projetos com Terraform
