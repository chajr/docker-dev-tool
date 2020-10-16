FROM ubuntu:20.04

RUN apt-get autoclean
RUN apt-get update -m --ignore-missing --fix-missing
RUN apt-get upgrade -y

RUN apt-get install -y\
    git\
    make\
    apt-utils\
    htop\
    vim\
    nano\
    iputils-ping\
    fping\
    net-tools\
    lsof\
    nmap\
    netcat\
    lnav\
    multitail\
    sysstat\
    curl\
    bat\
    silversearcher-ag\
    mytop\
    rsync\
    nethogs\
    libfmt-dev\
    wget

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y\
    smem\
    mtr\
    mc

## install osquery
COPY osquery_4.5.1_1.linux.amd64.deb /
RUN apt-get install /osquery_4.5.1_1.linux.amd64.deb
RUN rm osquery_4.5.1_1.linux.amd64.deb

##install innotop
RUN apt-get install -y mysql-client libterm-readkey-perl libclass-dbi-perl libclass-dbi-mysql-perl
RUN git clone https://github.com/innotop/innotop.git
WORKDIR /innotop
RUN perl Makefile.PL 
RUN make install
WORKDIR /
