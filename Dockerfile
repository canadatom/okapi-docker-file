############################################################
# Dockerfile to build Okapi Installed Containers
# Based on Ubuntu:latest
############################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Maintaner Tom Wu <tomooodesign@gmail.com>

RUN ln -sf /bin/bash /bin/sh

# Pre-requisite for compiling Okapi
RUN apt-get update
RUN apt-get install -y gcc bison flex default-jdk git

# jdk 7 and gcc 4.8
RUN cp /usr/lib/jvm/java-7-openjdk-amd64/include/jni.h /usr/lib/gcc/x86_64-linux-gnu/4.8/include
RUN cp /usr/lib/jvm/java-7-openjdk-amd64/include/jni_md.h /usr/lib/gcc/x86_64-linux-gnu/4.8/include

RUN mkdir -p /home/okapi
RUN git clone https://github.com/canadatom/okapi.git /home/okapi

WORKDIR /home/okapi
CMD echo "Welcome to Proof of Concept - Automate Okapi Workflow" && ll
