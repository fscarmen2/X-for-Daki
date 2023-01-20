#!/usr/bin/env bash
wget https://github.com/fscarmen/tools/releases/download/Proot/Proot.tar.gz
[ $? = 0 ] && tar xzvf Proot.tar.gz
rm -f Proot.tar.gz
echo "alias root='./dist/proot -S . /bin/bash'" >> ~/.bashrc
source ~/.bashrc