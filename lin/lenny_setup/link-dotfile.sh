#!/usr/bin/zsh

store_dir=${HOME}/project/trush/lin
for file in `ls -A ${store_dir}`
do
    ln -s ${store_dir}/${file} ${HOME}/${file}
done
