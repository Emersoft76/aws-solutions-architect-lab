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
