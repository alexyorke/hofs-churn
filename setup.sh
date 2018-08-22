#!/bin/bash

# install wget
apt-get -y install wget

# install tokei
wget -O - https://github.com/Aaronepower/tokei/releases/download/v7.0.3/tokei-v7.0.3-x86_64-unknown-linux-gnu.tar.gz | gunzip -c | tar xvf - > /tmp/tokei
chmod a+x /tmp/tokei
mv /tmp/tokei /usr/bin/

# install git from apt
apt-get -y install git
