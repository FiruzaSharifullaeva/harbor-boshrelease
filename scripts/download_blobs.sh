#!/bin/bash

set -x -e

files_dir=/tmp/harbor_files
mkdir -p $files_dir
cd $files_dir
#wget https://download.docker.com/linux/static/stable/x86_64/docker-17.06.2-ce.tgz
#wget -O docker-compose-Linux-x86_64-1.16.1 https://github.com/docker/compose/releases/download/1.16.1/docker-compose-Linux-x86_64
#wget https://www.openssl.org/source/openssl-1.0.2l.tar.gz
#wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
#wget https://www.kernel.org/pub/linux/utils/net/bridge-utils/bridge-utils-1.6.tar.gz
#wget https://github.com/vmware/harbor/releases/download/v1.2.0/harbor-offline-installer-v1.2.0.tgz

cd -
cd ..
bosh add-blob $files_dir/docker-17.06.2-ce.tgz docker/docker-17.06.2-ce.tgz
bosh add-blob $files_dir/docker-compose-Linux-x86_64-1.16.1 docker/docker-compose-Linux-x86_64-1.16.1
bosh add-blob $files_dir/harbor-offline-installer-v1.2.0.tgz harbor/harbor-offline-installer-v1.2.0.tgz
bosh add-blob $files_dir/autoconf-2.69.tar.gz library/autoconf-2.69.tar.gz
bosh add-blob $files_dir/bridge-utils-1.6.tar.gz library/bridge-utils-1.6.tar.gz
bosh add-blob $files_dir/openssl-1.0.2l.tar.gz library/openssl-1.0.2l.tar.gz

