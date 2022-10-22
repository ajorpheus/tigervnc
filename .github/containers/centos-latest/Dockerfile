FROM quay.io/centos/centos:stream9-development

RUN dnf -yqqq groupinstall 'Development Tools'
RUN cat /var/log/dnf.log
RUN dnf -yqqq install sudo
RUN dnf config-manager --set-enabled crb

RUN useradd -s /bin/bash -m rpm
RUN echo >> /etc/sudoers
RUN echo "rpm ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER rpm
WORKDIR /home/rpm
