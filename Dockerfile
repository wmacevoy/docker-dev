FROM ubuntu:xenial
MAINTAINER wmacevoy@gmail.com

RUN apt-get update; apt-get upgrade -y
RUN apt-get install -y openssh-server build-essential git gdb emacs openjdk-8-jdk man-db manpages-dev less locate tree
RUN updatedb
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD ["/bin/bash"]
