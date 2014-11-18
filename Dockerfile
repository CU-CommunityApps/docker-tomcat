# Tomcat7

# Pull base image.
FROM docker.cucloud.net/java

# File Author / Maintainer
MAINTAINER Shawn Bower

RUN \
  apt-get update && \
  apt-get install -y tomcat7 && \
  rm -rf /var/lib/apt/lists/*
  
