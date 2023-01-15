FROM maven:3-amazoncorretto-17

LABEL maintainer="RADtech <info@radtechsoft.com>"

RUN yum update
RUN curl -L -o /etc/yum.repos.d/devel:kubic:libcontainers:stable.repo https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/CentOS_7/devel:kubic:libcontainers:stable.repo
RUN yum install yum-plugin-copr
RUN yum copr enable lsm5/container-selinux
RUN yum install podman
RUN curl  -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

CMD [ "mvn" ]