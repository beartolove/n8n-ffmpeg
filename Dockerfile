FROM n8nio/n8n:1.79.1

# 安裝 ffmpeg（Debian / Ubuntu base）
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

# 切回 n8n 用戶
USER node

# 預設啟動
CMD ["n8n"]
