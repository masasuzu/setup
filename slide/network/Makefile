BUILD       = rst2s5
TARGET      = vlan_stp.rst
DESTDIR     = ../publish
DESTFILE    = ${DESTDIR}/vlan_stp.html

s5:
	mkdir -p ${DESTDIR}/
	${BUILD} ${TARGET} ${DESTFILE}

clean:
	-rm -fr ${DESTDIR}/*
