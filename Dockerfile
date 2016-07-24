FROM debian:jessie

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

ENV PATH /root/.local/bin:$PATH

RUN (curl -sSL https://get.haskellstack.org/ | sh) && \
    rm -rf /var/lib/apt/lists/*
