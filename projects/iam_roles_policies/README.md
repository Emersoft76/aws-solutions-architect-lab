# 🛡️ Projeto: IAM Roles + Policies  
Gestão de Acessos Seguros com Princípios de Menor Privilégio  
Secure Access Control with IAM, Custom Policies & Roles

Este projeto implementa um conjunto de políticas e permissões com controle refinado de acesso, aplicando boas práticas de segurança e o princípio de **Least Privilege** via Terraform.

This project implements IAM roles and policies for secure access control, following best practices like **Least Privilege** using Terraform.

---

## ✅ Objetivos do Projeto

```markdown
| Meta                          | Detalhamento                              |
|-------------------------------|-------------------------------------------|
| Separar permissões por função | Admin, ReadOnly, Billing, S3-only etc     |
| Criar roles com confiança     | Atribuição para EC2, Lambda, serviços etc |
| Políticas customizadas        | Controle exato sobre recursos             |
```
---

## 🔐 Boas Práticas de IAM
```
| Prática                          | Justificativa                            |
|----------------------------------|------------------------------------------|
| Política mínima necessária       | Reduz risco de abuso                     |
| Tags em usuários e roles         | Rastreabilidade e controle               |
| MFA para console                 | Acesso seguro em ambientes críticos      |
| Segregação por grupos/políticas  | Gestão mais limpa e escalável            |
```
---

## ✅ Deploy
```
terraform init
terraform apply -auto-approve
```
---

📘 Próximo projeto sugerido:
→ Logs e Alarmes com CloudWatch + SNS


