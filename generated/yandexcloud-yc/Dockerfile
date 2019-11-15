FROM debian:stable


RUN apt-get update && apt-get install -y \
  curl \
  python-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip install s3cmd
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | bash -s -- -i /usr/ -n

