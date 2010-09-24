#!/usr/bin/zsh

${HOME}/usr/bin/update-apt
sudo aptitude install python python-setuptools
sudo easy_install virtualenv virtualenvwrapper

echo '
# virtualenv
export WORKON_HOME=${HOME}/.virtualenvs
source /usr/bin/virtualenvwrapper.sh
' >> ${HOME}/.zshrc

mkdir ${HOME}/.virtualenvs
source ${HOME}/.zshrc


