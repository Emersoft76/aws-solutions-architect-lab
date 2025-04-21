                                      [ Internet ]
                                           |
                                     +--------------+
                                     |  Route 53    | ← (opcional)
                                     +------+-------+
                                            |
                          +-----------------+------------------+
                          |                                    |
                   +------+-----+                     +--------v-------+
                   | CloudFront  | ← Static Site      |  API Gateway   |
                   +------+-----+                     +--------+-------+
                          |                                    |
                   +------+-----+                        +-----v-----+
                   |    S3      |                        |   Lambda   |
                   +------------+                        +-----------+

    +---------------------------------------------------------+
    |                    AWS Cloud (VPC)                      |
    |                                                         |
    |   +-------------+    +-------------------+              |
    |   |  Public SG  |    |   Private SG      |              |
    |   +------+------|    +--------+----------+              |
    |          |                       |                      |
    |   +------v-------+       +-------v--------+             |
    |   | Load Balancer|       |     RDS MySQL  | ← Subnet    |
    |   +------+-------+       +----------------+   privada   |
    |          |                                              |
    |   +------+--------+                                     |
    |   | Auto Scaling   | ← EC2 (NGINX)                      |
    |   +---------------+                                     |
    +---------------------------------------------------------+

                         +-----------------------------+
                         | CloudWatch Logs & Alarms    |
                         | SNS Topic → E-mail Alerts   |
                         +-----------------------------+
---
## 📘 **Dicas de Leitura / Reading Tips**:

- O desenho acima é apenas uma representação lógica e simplificada.
- Para maior clareza, cada componente pode ser visualizado nos seus respectivos projetos.
- Você pode expandir o diagrama conforme adiciona novos recursos.
---

## 💡 Notas

- Cada componente reflete um projeto do repositório:
  - **Projeto 1:** S3 + CloudFront
  - **Projeto 2:** EC2 com Auto Scaling e ALB
  - **Projeto 3:** Lambda + API Gateway
  - **Projeto 4:** RDS com VPC
  - **Projeto 5:** IAM Policies (Least Privilege)
  - **Projeto 6:** CloudWatch Logs + SNS
---

