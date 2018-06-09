FROM debian
MAINTAINER Fabio Alvaro
ADD jdk1.8.0_171 /opt/jdk1.8.0_171
RUN apt-get update -y
RUN apt-get install sudo -y
RUN apt --fix-broken install -y
RUN apt-get update -y
RUN apt --fix-broken install -y
ENV JAVA_HOME=/opt/jdk1.8.0_171
ENV PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
