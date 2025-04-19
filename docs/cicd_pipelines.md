# 🚀 CI/CD Pipelines  
Automação de Entregas na Nuvem AWS  
Continuous Integration & Deployment on AWS

Este guia apresenta pipelines de integração e entrega contínua (CI/CD) utilizando GitHub Actions, AWS CodePipeline e Jenkins para provisionamento e deploy automatizado na AWS.

This guide presents continuous integration and delivery (CI/CD) pipelines using GitHub Actions, AWS CodePipeline, and Jenkins for automating infrastructure and deployment in AWS.

---

## 🔧 Visão Geral | Overview

```markdown
| Ferramenta         | Função                                      |
|--------------------|---------------------------------------------|
| GitHub Actions     | CI/CD baseado em gatilhos de push/pull      |
| AWS CodePipeline   | Orquestração nativa de etapas CI/CD na AWS  |
| Jenkins            | Servidor CI/CD personalizável e poderoso    |
```
---

## ✅ Pipeline com GitHub Actions
Arquivo: .github/workflows/terraform-deploy.yml
```
name: Terraform Deploy

on:
  push:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Repo
      uses: actions/checkout@v2

    - name: Setup Terraform
      uses: hashicorp/setup-terraform@v2

    - name: Terraform Init
      run: terraform init

    - name: Terraform Apply
      run: terraform apply -auto-approve
      env:
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```
Nota: Configure suas credenciais na aba Settings > Secrets and variables do GitHub.
---

## ✅ Pipeline com AWS CodePipeline
Etapas comuns:

| Etapa                | Descrição                                  |
|----------------------|--------------------------------------------|
| Source               | GitHub ou S3                               |
| Build                | AWS CodeBuild executando `buildspec.yml`   |
| Deploy               | CloudFormation, Elastic Beanstalk, etc     |
