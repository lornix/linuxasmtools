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
	../txt2man -t copy copy.txt | gzip -c > copy.1.gz
#
install:
	install -s copy /usr/bin
	install -D -m 666 copy.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/copy
	rm -f /usr/share/man/man1/copy.1.gz
#
release: tar deb rpm
#
tar:
	strip copy
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/copy-$(VERSION).tar.gz -C .. Copy
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=copy
	chown --reference Makefile ../release/copy*
	rm -f backup*
#
