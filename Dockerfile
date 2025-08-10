# Usar a imagem oficial do n8n como base
FROM n8nio/n8n

# Mudar para o utilizador root para instalar pacotes
USER root

# Atualizar a lista de pacotes e instalar o ffmpeg
# O -y confirma automaticamente a instalação
RUN apt-get update && apt-get install -y ffmpeg

# Voltar para o utilizador node por segurança
USER node
