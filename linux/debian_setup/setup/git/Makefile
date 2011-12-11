VERSION=1.7.8
INSTALL_TO=/usr/local/app/git-$(VERSION)

all: install manpages

install: build
	cd ./git-$(VERSION) && \
	sudo make install
	sudo ln -sf $(INSTALL_TO) /usr/local/app/git
	sudo ln -sf /usr/local/app/git/bin/* /usr/local/bin
	sudo rm -rf /usr/local/libexec/git-core
	sudo mkdir -p /usr/local/libexec/git-core
	sudo ln -sf /usr/local/app/git/libexec/git-core/* /usr/local/libexec/git-core
	sudo ln -sf /usr/local/app/git/share/man/man3/* /usr/local/share/man/man3

build: git-$(VERSION) depend
	tar xvf ./git-$(VERSION).tar.gz
	cd ./git-$(VERSION) && \
		./configure --with-curl=/usr/bin --prefix=$(INSTALL_TO) && \
	make -j4

depend:
	sudo aptitude purge -y git-core
	sudo aptitude update
	sudo aptitude install -y libexpat-dev libcurl4-gnutls-dev build-essential gettext

git-$(VERSION): git-$(VERSION).tar.gz
	tar xvzf ./git-$(VERSION).tar.gz

manpages: git-manpages-$(VERSION).tar.gz
	tar xvzf ./git-manpages-$(VERSION).tar.gz
	sudo cp -r man* $(INSTALL_TO)/share/man
	sudo rm -rf man*

git-$(VERSION).tar.gz:
	wget http://git-core.googlecode.com/files/git-$(VERSION).tar.gz

git-manpages-$(VERSION).tar.gz:
	wget http://git-core.googlecode.com/files/git-manpages-$(VERSION).tar.gz

.PHONY: all install build depend manpages
