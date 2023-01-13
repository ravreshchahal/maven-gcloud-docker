FROM maven:3-amazoncorretto-17

LABEL maintainer="RADtech <info@radtechsoft.com>"

RUN yum update -y 
RUN apt install podman
RUN alias docker=podman
RUN curl  -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

CMD [ "mvn" ]