FROM debian:stable


RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash