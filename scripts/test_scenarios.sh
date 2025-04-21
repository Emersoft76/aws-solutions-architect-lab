#!/bin/bash

# ✅ Testes básicos de validação da infraestrutura provisionada na AWS

echo "🔎 Verificando status do website estático (S3 + CloudFront)..."
curl -I https://meusite-exemplo.cloudfront.net

echo "🔒 Verificando políticas de segurança via IAM..."
aws iam get-account-authorization-details > iam_policies.json
echo "✅ Políticas exportadas para iam_policies.json"

echo "📡 Verificando logs do CloudWatch..."
aws logs describe-log-groups

echo "🚀 Testando função Lambda via CLI..."
aws lambda invoke --function-name MinhaFuncaoLambda output.json
cat output.json

echo "✅ Testes concluídos!"
