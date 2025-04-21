<h1 align="center">☁️ AWS Solutions Architect Lab</h1>
<p align="center"><strong>Build, Simulate and Master Cloud Architectures</strong></p>

<p align="center">
  <a href="https://aws.amazon.com/" target="_blank">
    <img src="https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws&style=for-the-badge" />
  </a>
  <a href="https://www.terraform.io/" target="_blank">
    <img src="https://img.shields.io/badge/Terraform-IaC-7B42BC?logo=terraform&style=for-the-badge" />
  </a>
  <a href="https://docs.aws.amazon.com/lambda/" target="_blank">
    <img src="https://img.shields.io/badge/Serverless-Lambda-yellow?logo=awslambda&style=for-the-badge" />
  </a>
  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html" target="_blank">
    <img src="https://img.shields.io/badge/Security-IAM-blue?logo=amazonaws&style=for-the-badge" />
  </a>
  <a href="https://docs.aws.amazon.com/vpc/" target="_blank">
    <img src="https://img.shields.io/badge/Networking-VPC-green?style=for-the-badge" />
  </a>
  <a href="https://Emersoft76.github.io/aws-solutions-architect-lab" target="_blank">
    <img src="https://img.shields.io/badge/Docs-Online-success?logo=github&style=for-the-badge" />
  </a>
</p>

---

## 📚 Índice • Table of Contents

- [📦 Sobre o Projeto](#-sobre-o-projeto--about-the-project)
- [🧭 Navegação](#-navegação--navigation)
- [🛠️ Tecnologias Utilizadas](#-tecnologias-utilizadas--technologies-used)
- [🚧 Projetos por Categoria](#-projetos-por-categoria--projects)
- [🗂️ Estrutura do Projeto](#-estrutura-do-projeto--project-structure)
- [🧭 Diagrama ASCII](#-diagrama-ascii--ascii-diagram)
- [🧠 Próximos Passos](#-próximos-passos--next-steps)
- [🤝 Contato & Créditos](#-contato--créditos)

---

## 📦 Sobre o Projeto • About the Project

Este repositório foi idealizado como um laboratório educacional e validativo para profissionais que desejam simular arquiteturas reais na AWS, com foco em práticas recomendadas de **infraestrutura, segurança, automação e escalabilidade**.

This repository is designed as an educational and validation lab for professionals simulating real-world AWS architectures with focus on **infrastructure, security, automation, and scalability**.

---

## 🧭 Navegação • Navigation

- [README principal](./README.md)
- [ascii_architecture.md (diagrama visual)](./ascii/ascii_architecture.md)
- [Documentação técnica (`/docs`)](./docs/)
- [Projetos por categoria (`/projects`)](./projects/)
- [Scripts e automações (`/scripts`)](./scripts/)
- [Visual online (GitHub Pages)](https://Emersoft76.github.io/aws-solutions-architect-lab)

---

## 🛠️ Tecnologias Utilizadas • Technologies Used

```markdown
| Tecnologia         | Link Oficial                           |
|--------------------|-----------------------------------------|
| ☁️ AWS             | [aws.amazon.com](https://aws.amazon.com) |
| ⚙️ Terraform       | [terraform.io](https://www.terraform.io) |
| 📘 IAM             | [docs.aws.amazon.com/iam](https://docs.aws.amazon.com/iam) |
| 📂 S3              | [docs.aws.amazon.com/s3](https://docs.aws.amazon.com/s3) |
| 📡 CloudWatch      | [docs.aws.amazon.com/cloudwatch](https://docs.aws.amazon.com/cloudwatch) |
| 🔔 SNS             | [docs.aws.amazon.com/sns](https://docs.aws.amazon.com/sns) |
| 🚀 Lambda          | [docs.aws.amazon.com/lambda](https://docs.aws.amazon.com/lambda) |
| 🛠️ RDS             | [docs.aws.amazon.com/rds](https://docs.aws.amazon.com/rds) |
| 🌐 API Gateway     | [docs.aws.amazon.com/apigateway](https://docs.aws.amazon.com/apigateway) |
```

---

## 🚧 Projetos por Categoria • Projects by Category

```markdown
/projects/
├── 🏗️ static_web_s3_cloudfront/        → Site estático com S3 + CDN
├── 🛠️ ec2_nginx_auto_scale/            → EC2 com Auto Scaling + Load Balancer
├── ⚙️ lambda_api_gateway/              → Lambda + API Gateway (Serverless)
├── 🧩 terraform_vpc_rds/               → VPC com RDS (MySQL)
├── 🪪 iam_roles_policies/              → IAM com políticas granulares
├── 📡 cloudwatch_logs_alerts/          → CloudWatch Logs + SNS (Monitoramento)
```
---

## 🗂️ Estrutura do Projeto • Project Structure
```
/aws-solutions-architect-lab/
├── 📄 README.md
├── 📁 docs/
│   ├── 🧠 skills_mapped.md
│   ├── 🌐 aws_cli_setup.md
│   ├── 🛠️ terraform_setup.md
│   ├── 🧩 cloudformation_basics.md
│   ├── 🚀 cicd_pipelines.md
│   ├── 📊 monitoring_logging.md
│   ├── 🔐 security_best_practices.md
│   └── 📄 scenario_architecture_examples.md
├── 📁 projects/
│   ├── 🏗️ static_web_s3_cloudfront/
│   ├── 🛠️ ec2_nginx_auto_scale/
│   ├── ⚙️ lambda_api_gateway/
│   ├── 🧩 terraform_vpc_rds/
│   ├── 🪪 iam_roles_policies/
│   └── 📡 cloudwatch_logs_alerts/
├── 📁 scripts/
│   ├── 🧪 test_scenarios.sh
│   ├── 📤 deploy_pipeline.sh
│   └── 📄 README.md
├── 📁 ascii/
│   └── 📄 ascii_architecture.md
├── 📁 assets/
│   └── 📄 diagramas, visuais, imagens
└── 📁 .github/
    └── workflows/
        └── cicd_sample.yml
```

## 🧭 Diagrama ASCII • ASCII Architecture Map

→ [ascii_architecture.md](./ascii/ascii_architecture.md)

---

## 🧠 Próximos Passos • Next Steps

* Modularizar ainda mais os projetos Terraform

* Implementar pipelines CI/CD com CodePipeline e GitHub Actions

* Adicionar uso de EKS e ECS (containers)

* Ampliar a documentação visual e pública via GitHub Pages

---

## 🤝 Contato & Créditos • Contact & Credits

<p align="center">

<strong>🌐 Do cabeamento físico ao provisionamento em nuvem, a conectividade sempre foi a base das melhores soluções.</strong>
Desenvolvido por <a href="https://github.com/Emersoft76">@Emersoft76</a>
Formado em Gerenciamento de Redes de Computadores – UNIP (Brasília/Brasil), 2009.
Soluções modernas com base sólida em redes, cloud e automação.
</p> ```
---
