FROM ubuntu:20.04

USER root

RUN apt-get update && apt-get install ansible sudo libx11-xcb-dev -y 

RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER docker

ADD . /galaxy

WORKDIR galaxy

RUN sudo sed -i 's|fullname:|fullname: docker|g' ./group_vars/all.yml
RUN sudo sed -i 's|username:|username: docker|g' ./group_vars/all.yml
RUN sudo sed -i 's|email:|email: docker@docker.com|g' ./group_vars/all.yml

RUN ./setup.sh