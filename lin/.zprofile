#
# .zprofile
#

LOGIN_SHELL=1

stty -ixon
umask 022

limit coredumpsize 0
eval `dircolors $HOME/etc/dircolors`

export LANG=ja_JP.utf8

#export EDITOR=vim
export PAGER="lv -c"

# .zprofile
