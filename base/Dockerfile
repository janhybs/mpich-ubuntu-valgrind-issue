FROM ubuntu:16.04

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && apt-get install -y  \
    sudo \
    make \
    wget  \
    python \
    bash-completion \
    apt-utils \
    nano \
    less \
    man \
    cmake \
    g++

RUN apt-get update && apt-get install -y  \
    valgrind


RUN useradd -ms /bin/bash user
