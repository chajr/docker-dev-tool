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
    wget\
    iproute2\
    arp-scan\
    tig\
    ctop\
    iftop\
    bmon\
    nload\
    speedometer\
    iotop\
    dstat\
    lynx\
    telnet\
    whois\
    jp2a\
    pv\
    bsdmainutils\
    uuid-runtime\
    ftp\
    zsh\
    tree\
    pydf\
    fdupes\
    exiftool\
    swaks\
    iptraf\
    psmisc\
    atop\
    nmon\
    iozone3

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y\
    smem\
    mtr\
    mc\
    sshfs\
    inxi\
    qemu-utils\
    node-file-sync-cmp\
    emacs

## exa
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
RUN wget https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
RUN unzip exa-linux-x86_64-0.9.0.zip
RUN mv exa-linux-x86_64 /usr/local/bin/exa
RUN rm exa-linux-x86_64-0.9.0.zip

## bashtop
RUN git clone https://github.com/aristocratos/bashtop.git
WORKDIR /bashtop
RUN make install
RUN rm -r /bashtop
WORKDIR /

## install osquery
RUN wget https://pkg.osquery.io/deb/osquery_4.5.1_1.linux.amd64.deb
RUN apt-get install /osquery_4.5.1_1.linux.amd64.deb
RUN rm osquery_4.5.1_1.linux.amd64.deb

##install innotop
RUN apt-get install -y mysql-client libterm-readkey-perl libclass-dbi-perl libclass-dbi-mysql-perl
RUN git clone https://github.com/innotop/innotop.git
WORKDIR /innotop
RUN perl Makefile.PL 
RUN make install
RUN rm -r /innotop
WORKDIR /

## setup bashrc
COPY ./.bashrc /root/

## setup oh-my-zsh
RUN yes -n | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone https://github.com/zsh-users/zsh-autosuggestions /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
COPY ./.zshrc /root/
COPY ./docker_agnoster.zsh-theme /root/.oh-my-zsh/themes/

COPY ./aliases.sh /root/
