#!/usr/bin/zsh
su - 
aptitude update && \
aptitude safe-upgrade && \
aptitude install gcc make libreadline5-dev python ruby git-core vim zsh sudo

