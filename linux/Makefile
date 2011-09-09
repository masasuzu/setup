dev:
	mkdir -p ${HOME}/.zsh
	mkdir -p ${HOME}/opt
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
	OPTBIN=${HOME}/opt/bin
	TMP=${HOME}/tmp
	PERLBREW=${TMP}/perlbrew
	mkdir -p ${OPTBIN}
	mkdir -p ${tmp}
	curl -o ${PERLBREW} -LO http://xrl.us/perlbrew
	chmod +x ${PERLBREW}
	${PERLBREW} init
	source ${HOME}/perl5/perlbrew/etc/bashrc
	mkdir -p ${HOME}/bin
	curl -o ${HOME}/bin/cpanm -LO http://xrl.us/cpanm

node:
	sudo aptitude install g++
	git clone git://github.com/creationix/nvm.git ${HOME}/.nvm
	source ${HOME}/.nvm/nvm.sh

