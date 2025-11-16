FROM n8nio/n8n:latest

USER root
# 若基底為 Alpine，可用 apk 安裝
RUN apk update && apk add --no-cache ffmpeg

# 若你改用 Debian 版的 n8n，則改用 apt-get
# RUN apt-get update && apt-get install -y ffmpeg && apt-get clean && rm -rf /var/lib/apt/lists/*

USER node
