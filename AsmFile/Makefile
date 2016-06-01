include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t AsmFile asmfile.txt | gzip -c > asmfile.1.gz
#
install:
	install -s asmfile /usr/bin
	install -D asmfile.1.gz /usr/share/man/man1/
	install -D scripts/viewer /usr/share/asmfile/viewer
	install -D scripts/upak /usr/share/asmfile/upak
	install -D scripts/pak /usr/share/asmfile/pak
	install -D scripts/compar /usr/share/asmfile/compar
	install -D scripts/print /usr/share/asmfile/print
#
uninstall:
	rm -f /usr/bin/asmfile
	rm -f /usr/share/man/man1/asmfile.1.gz
	rm -f /usr/share/asmfile/viewer
	rm -f /usr/share/asmfile/upak
	rm -f /usr/share/asmfile/pak
	rm -f /usr/share/asmfile/compar
	rm -f /usr/share/asmfile/print
	rm -f /usr/share/asmfile/*
	rmdir /usr/share/asmfile
#
release: tar deb rpm
#
tar:
	strip asmfile
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmfile-$(VERSION).tar.gz -C .. AsmFile
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmfile
	chown --reference Makefile ../release/asmfile*
	rm -f backup*
#
