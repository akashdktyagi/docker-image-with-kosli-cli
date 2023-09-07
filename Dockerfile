FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y curl
RUN curl -L https://github.com/kosli-dev/cli/releases/download/v2.6.5/kosli_2.6.5_linux_amd64.tar.gz | tar zx
RUN mv kosli /usr/local/bin/kosli