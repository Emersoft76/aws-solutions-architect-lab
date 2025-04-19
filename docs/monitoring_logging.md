# 📊 Monitoramento e Logging na AWS  
CloudWatch, Grafana e ELK Stack  
Monitoring AWS Infrastructure with CloudWatch, Grafana & ELK

Este guia apresenta formas práticas de monitorar ambientes em AWS, incluindo criação de logs, métricas customizadas, alarmes e integração com ferramentas externas.

This guide shows practical ways to monitor AWS infrastructure using logs, custom metrics, alarms and external tools like Grafana and ELK.

---

## 🔍 Serviços AWS utilizados

| Serviço            | Função                                        |
|--------------------|-----------------------------------------------|
| CloudWatch Logs    | Coleta de logs de aplicações e serviços       |
| CloudWatch Metrics | Métricas padrão (CPU, memória, latência, etc) |
| CloudWatch Alarms  | Notificações automáticas por thresholds       |
| SNS                | Envio de alertas por e-mail ou webhook        |

---

## ✅ Exemplo: Monitorar EC2 com CloudWatch

Criar métrica customizada (Linux)
```
#!/bin/bash
CPU_IDLE=$(vmstat 1 2 | tail -1 | awk '{print $15}')
aws cloudwatch put-metric-data \
  --metric-name CPU_Idle \
  --namespace CustomMetrics \
  --value $CPU_IDLE
```
Criar alarme
```
aws cloudwatch put-metric-data \
  --metric-name CPU_Idle \
  --namespace CustomMetrics \aws cloudwatch put-metric-alarm \
  --alarm-name "HighCPU" \
  --metric-name CPUUtilization \
  --namespace AWS/EC2 \
  --statistic Average \
  --period 60 \
  --threshold 80 \
  --comparison-operator GreaterThanThreshold \
  --evaluation-periods 2 \
  --alarm-actions arn:aws:sns:REGION:ID:MyTopic \
  --dimensions Name=InstanceId,Value=i-xxxxxxxxxxxxxxxxx
```
---

## 📈 Integração com Grafana

1. Crie workspace no Amazon Managed Grafana

2. Vincule fonte de dados: CloudWatch

3. Crie painel com métricas customizadas ou padrão

4. Use variáveis para filtros dinâmicos (instância, região, etc.)
---

## 📊 ELK Stack (opcional, local ou EC2)

| Componente  | Descrição                              |
|-------------|----------------------------------------|
| Filebeat    | Coleta logs locais e envia ao Logstash |
| Logstash    | Parse e roteamento de dados            |
| Elasticsearch | Armazenamento e indexação de logs    |
| Kibana      | Visualização e dashboards interativos  |
---

## 📘 Dicas de Monitoramento

| Boas práticas                       | Vantagem                                  |
|-------------------------------------|-------------------------------------------|
| Alarmes com escalonamento           | Notificações progressivas por criticidade |
| Dashboards segmentados por serviço  | Melhor visibilidade e foco por time       |
| Logs centralizados (S3, CloudWatch) | Auditoria e troubleshooting unificado     |
| Monitoramento em tempo real         | Detecção precoce de falhas ou anomalias   |
---

📘 Próximo passo sugerido:
→ Boas Práticas de Segurança na AWS
