FROM centos:latest

RUN sed -i 's/#mirrorlist/mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN cat /etc/yum.repos.d/CentOS-*
# RUN sed -i 's|baseurl=http://mirror.stream.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN dnf -yqqq groupinstall 'Development Tools'
RUN cat /var/log/dnf.log
RUN dnf -yqqq install sudo
RUN dnf config-manager --set-enabled crb

RUN useradd -s /bin/bash -m rpm
RUN echo >> /etc/sudoers
RUN echo "rpm ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER rpm
WORKDIR /home/rpm
