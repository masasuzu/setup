#!/usr/bin/zsh

sudo aptitude update && sudo aptitude safe-upgrade && \
sudo aptitude install -y build-essential libreadline5-dev git-core vim zsh sudo zlib1g-dev
