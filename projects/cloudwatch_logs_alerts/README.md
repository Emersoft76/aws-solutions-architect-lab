# 📡 Projeto: CloudWatch Logs + Alarms + SNS  
Monitoramento e Alertas Reais na AWS  
Monitoring Critical Events with CloudWatch + SNS Notifications

Este projeto cria uma arquitetura de monitoramento com CloudWatch, alarmes baseados em métricas e notificações por e-mail utilizando SNS.

This project builds a monitoring architecture with CloudWatch metrics, alarms and real-time email notifications via SNS, all provisioned using Terraform.

---

## ✅ Estrutura de Arquivos
```
/projects/cloudwatch_logs_alerts/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── README.md
```
---

## ✅ Objetivos Técnicos

```markdown
| Componente       | Função                                           |
|------------------|--------------------------------------------------|
| CloudWatch Logs  | Coleta de logs de instâncias ou aplicações       |
| CloudWatch Alarms| Gatilhos para eventos críticos ou thresholds     |
| SNS Topics       | Envio de alertas por e-mail                      |
```
---

## ✅ Deploy
```
terraform init
terraform apply -auto-approve
```
Importante: Confirme o e-mail recebido via SNS para ativar as notificações.

---

## 📘 Boas Práticas
```
| Prática                              | Vantagem                                     |
|-------------------------------------|----------------------------------------------|
| Alarmes acionáveis                  | Ação imediata sobre eventos críticos         |
| Retenção de logs otimizada          | Economia de custo com conformidade           |
| Integração com sistemas externos    | Webhooks, Lambda, ChatOps etc.               |
| Alertas por e-mail + SMS            | Redundância de comunicação                   |
```
---

📘 Próximo passo sugerido:
→ ascii_architecture.md – Diagrama geral do laboratório

---




