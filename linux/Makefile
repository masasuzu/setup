dev:
	mkdir -p ${HOME}/.zsh
	mkdir -p ${HOME}/opt
	mkdir -p ${HOME}/tmp
	mkdir -p ${HOME}/bin
	ln -fs  `pwd`/home/zshrc      ${HOME}/.zshrc
	ln -fs  `pwd`/home/zsh/devrc  ${HOME}/.zsh/devrc
	ln -fs  `pwd`/home/zprofile   ${HOME}/.zprofile
	ln -fs  `pwd`/home/tscreenrc  ${HOME}/.tscreenrc
	ln -fs  `pwd`/home/screenrc   ${HOME}/.screenrc
	ln -fs  `pwd`/home/vimrc      ${HOME}/.vimrc
	ln -fsn `pwd`/home/vim        ${HOME}/.vim
	ln -fsn `pwd`/home/etc        ${HOME}/etc
	ln -fs  `pwd`/home/bin        ${HOME}/opt/bin

git:
	ln -fs `pwd`/home/gitconfig   ${HOME}/.gitconfig

perl:
	curl -o ${HOME}/tmp/perlbrew -LO http://xrl.us/perlbrew
	chmod +x ${HOME}/tmp/perlbrew
	${HOME}/tmp/perlbrew init
	curl -o ${HOME}/bin/cpanm -LO http://xrl.us/cpanm

node:
	sudo aptitude install -y g++
	git clone git://github.com/creationix/nvm.git ${HOME}/.nvm

