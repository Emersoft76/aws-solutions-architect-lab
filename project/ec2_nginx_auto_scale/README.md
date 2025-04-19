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

## 📁 Arquivos Terraform

user_data.sh (script de inicialização)
  
#!/bin/bash
apt update -y
apt install nginx -y
echo "<h1>Servidor escalável OK</h1>" > /var/www/html/index.html
