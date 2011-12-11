VERSION=7.3
VER=73
INSTALL_TO=/usr/local/app/vim$(VER)

all: install

install: build
        cd ./vim$(VER) && \
        sudo make install
        sudo ln -sf $(INSTALL_TO) /usr/local/app/vim
        sudo ln -sf $(wildcard /usr/local/app/vim/bin/* ) /usr/local/bin/
        sudo ln -sf /usr/local/bin/vim /usr/local/bin/vi
        sudo ln -sf $(wildcard /usr/local/app/vim/share/man/man1/* ) /usr/local/share/man/man1/

build: vim$(VER) depend
        tar xvf ./vim-$(VERSION).tar.bz2
        cd ./vim$(VER) && \
        ./configure --enable-multibyte --enable-cscope --prefix=$(INSTALL_TO) && \
        make -j4

depend:
        sudo aptitude update
        sudo aptitude install -y libncurses-dev

vim$(VER): vim-$(VERSION).tar.bz2
        tar xvf ./vim-$(VERSION).tar.bz2

vim-$(VERSION).tar.bz2:
        wget http://ftp.vim.org/pub/vim/unix/vim-$(VERSION).tar.bz2

.PHONY: all install build depend
