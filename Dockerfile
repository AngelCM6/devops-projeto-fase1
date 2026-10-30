# Imagem base oficial do Node.js LTS leve (Alpine)
FROM node:20-alpine

# Definir diretorio de trabalho no container
WORKDIR /usr/src/app

# Copiar arquivos de definicao de dependencias
COPY package*.json ./

# Instalar dependencias limpas de producao
RUN npm ci --only=production

# Copiar codigo-fonte da aplicacao
COPY src/ ./src/

# Expor a porta que a aplicacao escuta
EXPOSE 3000

# Definir usuario nao-root para boas praticas de seguranca
USER node

# Comando de inicializacao da API
CMD ["node", "src/server.js"]