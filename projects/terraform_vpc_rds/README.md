# 🧩 Projeto: VPC + Subnets + Amazon RDS  
Infraestrutura Isolada com Banco de Dados Seguro  
VPC Architecture with Private RDS using Terraform

Este projeto cria uma VPC customizada com subnets públicas e privadas, roteamento, internet gateway e uma instância RDS MySQL localizada em subnet privada.

This project creates a custom VPC with public/private subnets, routing tables, internet gateway, and a MySQL RDS instance deployed in a private subnet.

---

## ✅ Recursos AWS Criados

```markdown
| Componente        | Descrição                                        |
|-------------------|--------------------------------------------------|
| VPC               | Rede isolada com CIDR definido                   |
| Subnets públicas  | Acesso à Internet (para NAT, bastion, etc)       |
| Subnets privadas  | Acesso interno para aplicações e banco de dados  |
| Internet Gateway  | Roteamento para fora da VPC                      |
| Route Tables      | Separação e controle de tráfego                  |
| RDS (MySQL)       | Banco de dados gerenciado na subnet privada      |
```
---

## ✅ Deploy
```
terraform init
terraform apply -auto-approve
```
---

## 🧪 Teste

1. Conecte-se via DBeaver ou MySQL Workbench

2. Use o endpoint exibido nos outputs

3. Certifique-se de estar em uma máquina com acesso à VPC
