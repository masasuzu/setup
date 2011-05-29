#!/usr/bin/zsh

cd $(dirname $0)

./init-install-lenny.sh
./link-dotfile.sh
./install-tscreen-lenny.sh

