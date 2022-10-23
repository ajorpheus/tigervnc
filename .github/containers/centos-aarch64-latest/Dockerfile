FROM quay.io/centos/arm64v8:stream9-development

RUN dnf -yqqq groupinstall 'Development Tools'
RUN dnf update 
RUN dnf upgrade -yqqq --autoremove --skip-broken
RUN dnf install -yqqq --autoremove --skip-broken libfltk1.3-dev fluid gettext appstream
RUN dnf install -yqqq --autoremove --skip-broken libgnutls28-dev nettle-dev libgmp-dev
RUN dnf install -yqqq --autoremove --skip-broken libxtst-dev libxdamage-dev libxfixes-dev libxrandr-dev libpam-dev
RUN dnf install -yqqq --autoremove --skip-broken libavcodec-dev libavutil-dev libswscale-dev
RUN dnf -yqqq install sudo
RUN dnf config-manager --set-enabled crb

RUN useradd -s /bin/bash -m rpm
RUN echo >> /etc/sudoers
RUN echo "rpm ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER rpm
WORKDIR /home/rpm
