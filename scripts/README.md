# ⚙️ Scripts de Automação

Este diretório contém scripts úteis para testar, validar e implantar partes da infraestrutura definida nos projetos deste laboratório.

---

## 📄 Lista de Scripts / Script List

| Script                     | Função / Function                                             |
|----------------------------|---------------------------------------------------------------|
| `test_scenarios.sh`        | Executa validações e testes básicos dos recursos AWS          |
| `deploy_pipeline.sh`       | Aciona uma pipeline de CI/CD no AWS CodePipeline              |

---

## 🔧 Requisitos

- AWS CLI instalado e configurado (`aws configure`)
- Permissões adequadas para IAM, Lambda, CloudWatch, CodePipeline, etc.

---

## 🚀 Execução

```bash
chmod +x test_scenarios.sh
./test_scenarios.sh
```
---
```
chmod +x deploy_pipeline.sh
./deploy_pipeline.sh
```
---

## 🪟 Versões para Windows (PowerShell)

| Script PowerShell           | Função                                              |
|-----------------------------|------------------------------------------------------|
| `test_scenarios.ps1`        | Executa os testes usando AWS CLI no Windows          |
| `deploy_pipeline.ps1`       | Aciona uma pipeline no AWS CodePipeline (Windows)    |

> Execute com: `powershell ./test_scenarios.ps1`
---

## 📘 Próximo passo sugerido

→ Integrar esses scripts a um GitHub Action customizado

→ Incluir testes automatizados de retorno HTTP, validação de RDS, etc.

---
