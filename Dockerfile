FROM ubuntu:focal

WORKDIR /home/dotfiles
COPY . .

RUN chmod +x init.docker.sh
