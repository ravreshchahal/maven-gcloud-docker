FROM maven:3-amazoncorretto-17

LABEL maintainer="RADtech <info@radtechsoft.com>"

RUN amazon-linux-extras install podman
RUN curl  -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

CMD [ "mvn" ]