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
- [Documentação técnica (pasta `/docs`)](./docs/)
- [Projetos práticos (pasta `/projects`)](./projects/)
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
├── static_web_s3_cloudfront/           → Site estático com S3 + CDN
├── ec2_nginx_auto_scale/               → EC2 com Auto Scaling + Load Balancer
├── lambda_api_gateway/                 → Função Lambda + API Gateway (Serverless)
├── terraform_vpc_rds/                  → VPC com RDS em subnet privada
├── iam_roles_policies/                 → IAM com políticas e least privilege
├── cloudwatch_logs_alerts/             → Monitoramento + Alarmes + SNS
```
---

## 🗂️ Estrutura do Projeto • Project Structure:

/aws-solutions-architect-lab/
├── 📄 [README.md](./README.md)
├── 📁 [docs](./docs/)
│   ├── 📄 [monitoring_logging.md](./docs/monitoring_logging.md)
│   ├── 📄 [security_best_practices.md](./docs/security_best_practices.md)
│   └── 📄 [scenario_architecture_examples.md](./docs/scenario_architecture_examples.md)
├── 📁 [projects](./projects/)
│   ├── 📁 [static_web_s3_cloudfront](./projects/static_web_s3_cloudfront/)
│   ├── 📁 [ec2_nginx_auto_scale](./projects/ec2_nginx_auto_scale/)
│   ├── 📁 [lambda_api_gateway](./projects/lambda_api_gateway/)
│   ├── 📁 [terraform_vpc_rds](./projects/terraform_vpc_rds/)
│   ├── 📁 [iam_roles_policies](./projects/iam_roles_policies/)
│   └── 📁 [cloudwatch_logs_alerts](./projects/cloudwatch_logs_alerts/)
├── 📁 [ascii](./ascii/)
│   └── 📄 [ascii_architecture.md](./ascii/ascii_architecture.md)
└── 📁 [.github/workflows](./.github/workflows/)
    └── 📄 Integrações e automações (ex: GitHub Pages)

---

## 🧭 Diagrama ASCII • ASCII Architecture Map

Veja a representação visual completa de todos os componentes criados neste laboratório:

→ ascii_architecture.md

---

🧠 Próximos Passos • Next Steps

* Modularizar os projetos Terraform

* Adicionar pipelines CI/CD (GitHub Actions + CodePipeline)

* Expandir o uso de containers (ECS, EKS)

* Publicar documentação com GitHub Pages (✅ já configurado)

---

🤝 Contato & Créditos • Contact & Credits

Desenvolvido por [@Emersoft76](https://github.com/Emersoft76)  
_Gestor de Redes formado pela Universidade Paulista (UNIP), Brasil._  
_Foco em arquiteturas seguras, escaláveis e práticas em ambientes de nuvem (AWS)._  

Projetos idealizados com esmero e critérios técnicos, com ênfase em validação prática para atuação como **Solutions Architect**.
