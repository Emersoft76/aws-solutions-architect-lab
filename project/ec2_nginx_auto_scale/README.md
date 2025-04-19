# 🛠️ Projeto: EC2 + Auto Scaling + Load Balancer  
Infraestrutura Escalável e Redundante na AWS  
Highly Available EC2 Infrastructure with Auto Scaling & ALB

Este projeto cria uma infraestrutura completa com instâncias EC2 gerenciadas por Auto Scaling Group (ASG), balanceadas por um Application Load Balancer (ALB), usando Terraform.

This project provisions a high-availability EC2 infrastructure with Auto Scaling Group (ASG) and Application Load Balancer (ALB), using Terraform for automated deployment.

---

## ✅ Componentes AWS Utilizados

```markdown
| Serviço          | Função                                    |
|------------------|-------------------------------------------|
| EC2              | Máquinas virtuais para aplicação NGINX    |
| Auto Scaling     | Escalabilidade automática                 |
| ALB              | Balanceamento de carga                    |
| Launch Template  | Base para instâncias EC2                  |
| Security Groups  | Regras de firewall                        |
```
---

## ✅ Estrutura de Arquivos (padrão)
```
/projects/ec2_nginx_auto_scale/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── user_data.sh
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

1. Acesse o DNS do ALB fornecido no output

2. Recarregue várias vezes — veja diferentes instâncias servindo o conteúdo
---

📘 Próximo projeto sugerido:
→ Lambda + API Gateway (Arquitetura Serverless)
