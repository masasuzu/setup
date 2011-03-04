BUILD       = rst2s5
TARGET      = index.rst
DESTDIR     = ../../publish/slide
DESTFILE    = ${DESTDIR}/index.html

s5:
	mkdir -p ${DESTDIR}/
	${BUILD} ${TARGET} ${DESTFILE}

clean:
	-rm -fr ${DESTDIR}/*
