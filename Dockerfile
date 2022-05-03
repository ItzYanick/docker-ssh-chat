FROM debian:latest

RUN mkdir /config

RUN wget "https://github.com/shazow/ssh-chat/releases/download/v1.11-rc5/ssh-chat-linux_amd64.tgz"
RUN tar xvfz ssh-chat-linux_amd64.tgz

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
