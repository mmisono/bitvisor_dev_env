FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    mercurial \
    git \
    build-essential \
    mingw-w64 \
    whiptail \
    bear \
    liblzma-dev \
    vim \
    tmux \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
COPY ./make.sh .
COPY ./build_ipxe.sh .

WORKDIR /share

ENTRYPOINT ["/bin/bash"]
CMD ["/work/make.sh"]
