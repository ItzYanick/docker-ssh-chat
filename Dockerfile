FROM debian:latest

RUN apt-get update && apt-get install -y wget
RUN wget "https://github.com/shazow/ssh-chat/releases/download/v1.11-rc5/ssh-chat-linux_amd64.tgz"
RUN tar xvfz ssh-chat-linux_amd64.tgz

FROM debian:latest

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY --from=0 /ssh-chat/ssh-chat /ssh-chat

RUN mkdir /config

ENTRYPOINT ["/entrypoint.sh"]
