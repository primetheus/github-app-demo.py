FROM python:3-alpine

COPY . /opt/githubapp
WORKDIR /opt/githubapp

RUN apk add --no-cache \
      build-base \
      linux-headers \
      libffi-dev \
      curl \
      gcc \
      python3-dev \
      libressl-dev \
      bash \
      git

RUN pip install --upgrade --no-cache-dir -r requirements.txt

EXPOSE 5000/tcp

ENTRYPOINT [ "bash" ]