# Use gcc base image
FROM gcc:7
MAINTAINER Tanmay Bangalore <tanmaybangalore@gmail.com>

# Set up Docker agent
ENV HOME /home/jenkins
RUN addgroup -S -g 10000 jenkins
RUN adduser -S -u 10000 -h $HOME -G jenkins jenkins

ARG VERSION=3.14
ARG AGENT_WORKDIR=/home/jenkins/agent

RUN apt-get update
RUN apt-get install curl bash git openssh-client openssl \
  && curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /usr/share/jenkins \
  && chmod 644 /usr/share/jenkins/slave.jar
USER jenkins
ENV AGENT_WORKDIR=${AGENT_WORKDIR}
RUN mkdir /home/jenkins/.jenkins && mkdir -p ${AGENT_WORKDIR}

VOLUME /home/jenkins/.jenkins
VOLUME ${AGENT_WORKDIR}
WORKDIR /home/jenkins
# Download build dependencies
RUN apt-get update && apt-get install -y cmake