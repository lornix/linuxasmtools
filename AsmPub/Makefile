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
	../txt2man -t AsmPub asmpub.txt | gzip -c > asmpub.1.gz
#
install:
	install -s asmpub /usr/bin
	install -D -m 666 asmpub.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/asmpub
	rm -f /usr/share/man/man1/asmpub.1.gz
#
release: tar deb rpm
#
tar:
	strip asmpub
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmpub-$(VERSION).tar.gz -C .. AsmPub
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmpub
	chown --reference Makefile ../release/asmpub*
	rm -f backup*
#
