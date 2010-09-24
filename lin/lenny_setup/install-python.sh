#!/usr/bin/zsh

if [ $1 ]
then
    version=$1
else
    version='2.6.6'
fi

cd ${HOME}/tmp

echo ${version}
wget http://www.python.org/ftp/python/${version}/Python-${version}.tgz
tar xvzf Python-${version}.tgz
cd Python-${version}

./configure --prefix=${HOME}/usr/local
make && make install

