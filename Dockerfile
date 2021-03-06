# Tomcat7

# Pull base image.
FROM dtr.cucloud.net/cs/java

# File Author / Maintainer
MAINTAINER Shawn Bower

COPY lib/ /usr/share/tomcat7/lib
ADD appdynamics.tar /usr/share

RUN \
  apt-get update && \
  apt-get install -y tomcat7 multitail && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R tomcat7:tomcat7 /usr/share/appdynamics

EXPOSE 8080
