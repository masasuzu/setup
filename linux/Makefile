setup: env\
		git\
		perl\
		node

env:
	mkdir -p ${HOME}/.zsh
	mkdir -p ${HOME}/opt
	mkdir -p ${HOME}/tmp
	mkdir -p ${HOME}/bin
	ln -fs  `pwd`/home/zshrc            ${HOME}/.zshrc
	ln -fs  `pwd`/home/zshenv           ${HOME}/.zshenv
	ln -fs  `pwd`/home/zsh/prompt       ${HOME}/.zsh/prompt
	ln -fs  `pwd`/home/zsh/functions    ${HOME}/.zsh/functions
	ln -fs  `pwd`/home/zsh/alias        ${HOME}/.zsh/alias
	ln -fs  `pwd`/home/zsh/devenv       ${HOME}/.zsh/devenv
	ln -fs  `pwd`/home/zprofile         ${HOME}/.zprofile
	ln -fs  `pwd`/home/tscreenrc        ${HOME}/.tscreenrc
	ln -fs  `pwd`/home/tmux.conf        ${HOME}/.tmux.conf
	ln -fs  `pwd`/home/vimrc            ${HOME}/.vimrc
	ln -fsn `pwd`/home/vim              ${HOME}/.vim
	ln -fsn `pwd`/home/etc              ${HOME}/etc
	ln -fsn `pwd`/home/bin              ${HOME}/opt/bin

# 会社と家で.gitconfigを分けたいの
git:
	ln -fs `pwd`/home/gitconfig   ${HOME}/.gitconfig

perl:
	curl -L http://xrl.us/perlbrewinstall | bash
	@echo source ~/perl5/perlbrew/etc/bashrc

python:
	curl -kL http://xrl.us/pythonbrewinstall | bash
	@echoource ~/.pythonbrew/etc/bashrc

ruby:
	curl -L https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer | bash
	@echo source ~/.rvm/scripts/rvm
	@echo rvm pkg install zlib && rvm pkg install openssl
	@echo rvm install 1.8.7 --with-openssl-dir=$rvm_path/usr --with-zlib-dir=$rvm_path/usr --with-readline-dir=$rvm_path/usr

node:
	git clone git://github.com/creationix/nvm.git ${HOME}/.nvm
	@echo source ~/.nvm/nvm.sh

