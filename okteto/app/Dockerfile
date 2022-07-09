FROM alpine:latest

WORKDIR /usr/src/app

COPY . .
RUN apk update && apk add bash neovim tmux

EXPOSE 3000
