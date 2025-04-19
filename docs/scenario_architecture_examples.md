# 🏗️ Exemplos de Arquiteturas AWS  
Cenários práticos e reutilizáveis | Real-World Architecture Scenarios

Este documento apresenta diferentes modelos arquiteturais baseados em boas práticas da AWS, com exemplos aplicados nos projetos deste laboratório.

This document outlines several architecture scenarios based on AWS best practices, each represented by a use case and implemented in this lab.

---

## ✅ Cenários Abordados | Covered Scenarios

```markdown
| Cenário                               | Descrição resumida                                             | Projeto Relacionado                          |
|---------------------------------------|----------------------------------------------------------------|----------------------------------------------|
| Web static com S3 + CloudFront        | Hosting rápido e seguro de site estático com cache global      | `projects/static_web_s3_cloudfront/`         |
| EC2 com Auto Scaling + Load Balancer  | Alta disponibilidade + escalabilidade horizontal               | `projects/ec2_nginx_auto_scale/`             |
| Lambda + API Gateway                  | API Serverless com baixo custo e alta performance              | `projects/lambda_api_gateway/`               |
| VPC customizada com RDS               | Isolamento de rede + banco relacional em sub-rede privada      | `projects/terraform_vpc_rds/`                |
| IAM granular + políticas customizadas | Controle de acesso refinado por função e recurso               | `projects/iam_roles_policies/`               |
| Logs e alarmes com CloudWatch         | Monitoramento em tempo real + alertas críticos                 | `projects/cloudwatch_logs_alerts/`           |
```
---

## 🧠 Padrões Utilizados

* Multi-AZ para disponibilidade

* Múltiplas subnets (privadas/públicas)

* Autoscaling groups

* Load balancing (Application Load Balancer)

* Criptografia em repouso (S3, RDS, EBS)

* IAM com least privilege

* Logging centralizado

* Scripts e IaC versionados
---

## 📐 Diagrama Exemplo: Arquitetura Web Redundante
```
        [User]         
           |              
   +---------------+       
   |  CloudFront   |       
   +-------+-------+       
           |              
   +-------v--------+     
   |   ALB (HTTP)   |     
   +---+-------+----+     
       |       |          
+------v+   +--v------+    
| EC2 #1 |  | EC2 #2 |  <- Auto Scaling
+-------+   +-------+     
    |           |         
+---v-----------v---+     
|  Private Subnet   |     
|  + RDS + Logs     |     
+-------------------+     
```
---

## 🎯 Considerações Finais

Este repositório busca aproximar a realidade de um Solutions Architect AWS, promovendo conhecimento técnico aplicado em cenários reais de negócios.

This lab aims to simulate the real-world responsibilities of an AWS Solutions Architect, providing technical depth and practical infrastructure knowledge.
---

📘 Fim da pasta /docs/ — Próximos passos:

* Criar os projetos em /projects/

* Gerar scripts úteis em /scripts/

* Construir o diagrama ASCII geral da arquitetura
