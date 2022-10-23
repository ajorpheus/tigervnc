FROM arm64v8/ubuntu:rolling

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get -yqqqfm --autoremove --purge install packaging-dev equivs
RUN apt-get update
RUN apt-get full-upgrade -yqqqfm --autoremove --purge
RUN apt-get install -yqqqfm --autoremove --purge libfltk1.3-dev fluid gettext appstream
RUN apt-get install -yqqqfm --autoremove --purge libgnutls28-dev nettle-dev libgmp-dev
RUN apt-get install -yqqqfm --autoremove --purge libxtst-dev libxdamage-dev libxfixes-dev libxrandr-dev libpam-dev
RUN apt-get install -yqqqfm --autoremove --purge libavcodec-dev libavutil-dev libswscale-dev
RUN apt-get clean

RUN useradd -s /bin/bash -m deb
RUN echo >> /etc/sudoers
RUN echo "deb ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER deb
WORKDIR /home/deb
