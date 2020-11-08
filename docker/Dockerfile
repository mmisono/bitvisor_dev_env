FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    mercurial \
    git \
    build-essential \
    mingw-w64 \
    whiptail \
    vim \
    tmux \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
COPY ./make.sh .

WORKDIR /share

ENTRYPOINT ["/bin/bash"]
CMD ["/work/make.sh"]
