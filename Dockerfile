FROM ubuntu:24.04
RUN apt-get update \
    && apt-get full-upgrade -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y npm wget \
    && rm -rf /var/lib/apt/lists/*
RUN npm install -g @webos-tools/cli
RUN useradd --create-home webos
USER webos
WORKDIR /home/webos
RUN mkdir .ssh
CMD bash