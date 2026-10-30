#!/bin/bash
set -e

echo "=== INICIANDO DEPLOY CONTINUO (CD) ==="

# 1. Puxar as ultimas atualizacoes do branch main
git pull origin main

# 2. Reconstruir a imagem Docker e subir o container em background
echo "Construindo e iniciando containers com Docker Compose..."
docker-compose down
docker-compose build --no-cache
docker-compose up -d

# 3. Validar se o container subiu com sucesso (Health Check)
echo "Aguardando inicializacao da aplicacao..."
sleep 5

curl -f http://localhost:3000/health || (echo "Falha no Health Check!" && exit 1)

echo "=== DEPLOY CONCLUIDO COM SUCESSO! ==="