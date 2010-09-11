#!/usr/bin/zsh

tmp_dir=${HOME}/tmp

sudo aptitude update && sudo aptitude safe-upgrade
sudo aptitude install gcc make libreadline5-dev

if [ ! -d ${tmp_dir} ]
then
    mkdir ${tmp_dir}
fi

cd ${tmp_dir}

wget http://www.steve.org.uk/Software/tscreen/dist/tscreen-0.4.9.tar.gz
tar zxvf tscreen-0.4.9.tar.gz
cd tscreen-0.4.9

./configure --enable-colors256 && make && sudo make install

