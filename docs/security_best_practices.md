# 🔐 AWS Security Best Practices  
Segurança em ambientes AWS | Cloud Security Foundations

Este guia apresenta práticas essenciais para proteger sua infraestrutura AWS, com foco em identidade, criptografia, acesso, logging e monitoramento.

This guide outlines essential practices to secure your AWS infrastructure, with emphasis on identity, encryption, access control, logging, and monitoring.

---

## ✅ Princípios de Segurança | Core Security Principles

| Princípio                          | Descrição                                            |
|------------------------------------|------------------------------------------------------|
| Least Privilege                    | Conceder apenas as permissões mínimas necessárias    |
| MFA obrigatório                    | Proteção extra em contas e usuários sensíveis        |
| Auditoria e logging                | Registro de atividades com CloudTrail e CloudWatch   |
| Criptografia em trânsito e repouso | HTTPS / TLS + KMS (S3, RDS, etc.)                    |
| Segmentação de rede                | Isolamento com VPC, subnets privadas e SGs           |
---

## 🧩 Boas Práticas de IAM

* Criar usuários IAM individuais (evite usar root)

* Aplicar políticas específicas por função ou projeto

* Criar grupos para facilitar controle de permissões

* Utilizar tags para rastrear usuários e políticas

* Rotacionar chaves de acesso periodicamente

Exemplo de política restritiva (S3 read-only)
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["s3:Get*", "s3:List*"],
      "Resource": ["arn:aws:s3:::example-bucket/*"]
    }
  ]
}
```
---

## 🔒 Criptografia com KMS
```
# Criação de chave KMS
aws kms create-key --description "Chave para dados sensíveis"
```
* Ative a criptografia em repouso (S3, RDS, EBS)
* Use TLS (https) para comunicação entre serviços
* Configure políticas de key rotation automática
---

## 🧹 Hardening de Instâncias EC2

* Atualizar pacotes (apt/yum update)

* Desativar root login por SSH

* Usar pares de chave seguros

* Firewall interno (iptables ou ufw)

* Monitorar processos e portas (Netstat, ps aux)
---

## ✅ Checklist de Segurança na AWS

| Ação                                 | Verificado?  |
|--------------------------------------|-------- -----|
| Root user com MFA ativado            | ✅          |
| IAM users/grupos segmentados         | ✅          |
| Logging com CloudTrail habilitado    | ✅          |
| Buckets S3 privados por padrão       | ✅          |
| SGs e NACLs restritivos              | ✅          |
| Instâncias atualizadas e monitoradas | ✅          |
---

📘 Próximo passo sugerido:
→ Exemplos de Arquiteturas e Desenhos
