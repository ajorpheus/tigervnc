FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -yqqqfm --autoremove --purge install packaging-dev equivs
RUN apt-get clean

RUN useradd -s /bin/bash -m deb
RUN echo >> /etc/sudoers
RUN echo "deb ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER deb
WORKDIR /home/deb
