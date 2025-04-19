# 🧩 CloudFormation Basics  
Modelagem de Infraestrutura com Templates YAML  
Infrastructure Modeling with YAML Templates

Este guia apresenta os fundamentos do AWS CloudFormation, com um exemplo prático de criação de uma instância EC2 e um bucket S3 usando templates YAML.

This guide introduces the basics of AWS CloudFormation, including a working example that provisions an EC2 instance and an S3 bucket using YAML templates.

---

## ✅ O que é CloudFormation?

CloudFormation é o serviço nativo da AWS para gerenciar infraestrutura como código (IaC), permitindo criar e atualizar recursos de forma automatizada e segura por meio de templates em JSON ou YAML.

CloudFormation is AWS’s native infrastructure-as-code (IaC) service, allowing developers to define and manage AWS resources via declarative JSON or YAML templates.

---

## 📁 Estrutura do Exemplo

cloudformation-demo/ ├── template.yaml

---

## 🧾 template.yaml

```yaml
AWSTemplateFormatVersion: '2010-09-09'
Description: Exemplo básico de EC2 + S3

Resources:
  MyInstance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: t2.micro
      ImageId: ami-0c55b159cbfafe1f0
      Tags:
        - Key: Name
          Value: CFN-Lab-Instance

  MyBucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: cfn-lab-bucket-demo
```
---

##🚀 Deploy via AWS Console

1. Acesse AWS CloudFormation Console

2. Clique em "Create stack"

3. Escolha "Upload a template file"

4. Envie o template.yaml e siga o passo a passo

5. Stack será criada com EC2 + S3 automaticamente

---

## 🖥️ Deploy via AWS CLI
```
aws cloudformation deploy \
  --template-file template.yaml \
  --stack-name lab-stack-demo \
  --capabilities CAPABILITY_NAMED_IAM
```
---

## 🔄 Atualização de Stack

Se fizer alterações no template:
```
aws cloudformation update-stack \
  --template-body file://template.yaml \
  --stack-name lab-stack-demo \
  --capabilities CAPABILITY_NAMED_IAM
```
---

##🧹 Remoção
```
aws cloudformation delete-stack \
  --stack-name lab-stack-demo
```
---

## 🧠 Boas Práticas CloudFormation

| Prática                  | Descrição                                          |
|--------------------------|----------------------------------------------------|
| Modularização            | Separar stacks (ex: rede, app, monitoramento)      |
| Parâmetros               | Usar `Parameters:` para tornar templates dinâmicos |
| Outputs                  | Definir `Outputs:` para exportar valores úteis     |
| StackSets                | Usar StackSets para múltiplas regiões/contas       |
---

## 📘 Próximo passo sugerido:
→ CI/CD Pipelines com GitHub Actions e Jenkins
