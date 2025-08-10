# Usar a imagem oficial do n8n como base
FROM n8nio/n8n

# Mudar para o utilizador root para instalar pacotes
USER root

# Atualizar os pacotes e instalar o ffmpeg usando o gestor 'apk' do Alpine Linux
RUN apk update && apk add --no-cache ffmpeg

# Voltar para o utilizador node por segurança
USER node
