FROM ubuntu:20.04

RUN apt-get autoclean
RUN apt-get update -m --ignore-missing --fix-missing
RUN apt-get upgrade -y
