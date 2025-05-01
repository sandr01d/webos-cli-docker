FROM alpine:latest

RUN apk --no-cache add npm wget
RUN npm install -g @webos-tools/cli

RUN adduser --disabled-password webos

USER webos
WORKDIR /home/webos
RUN mkdir .ssh

CMD ash