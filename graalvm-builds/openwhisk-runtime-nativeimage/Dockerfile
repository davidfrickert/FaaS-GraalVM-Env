FROM debian:stable-slim

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y bash perl jq git curl wget openssl ca-certificates sed openssh-client \
  && update-ca-certificates \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/functions