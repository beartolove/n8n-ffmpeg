FROM n8nio/n8n:1.74.1-full

USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

USER node

CMD ["n8n"]
