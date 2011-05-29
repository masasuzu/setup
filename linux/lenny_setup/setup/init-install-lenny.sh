#!/usr/bin/zsh

sudo aptitude update && sudo aptitude safe-upgrade && \
sudo aptitude install gcc make libreadline5-dev python ruby git-core vim zsh sudo zlib1g-dev
