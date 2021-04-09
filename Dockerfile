FROM ubuntu:18.04

USER root

ADD . /galaxy

WORKDIR galaxy

RUN apt-get update && apt-get install ansible -y 
RUN ./setup.sh