#!/bin/bash

# 🚀 Script de exemplo para acionar uma pipeline de CI/CD na AWS via CLI

PIPELINE_NAME="MeuPipelineTerraform"

echo "🚀 Acionando pipeline '$PIPELINE_NAME'..."
aws codepipeline start-pipeline-execution --name $PIPELINE_NAME

echo "⏳ Aguardando execução..."
sleep 5

aws codepipeline list-pipeline-executions --pipeline-name $PIPELINE_NAME --max-items 1
echo "✅ Execução iniciada com sucesso!"
