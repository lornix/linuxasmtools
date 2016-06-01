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
	../txt2man -t AsmDis asmdis.txt | gzip -c > asmdis.1.gz
#
install:
	install -s asmdis  /usr/bin/asmdis
	install -D -m 666 asmdis_help.txt /usr/share/doc/asmref/asmdis_help.txt
	install -D -m 666 asmdis.1.gz /usr/share/man/man1/asmdis.1.gz
#
uninstall:
	rm -f /usr/bin/asmdis
	rm -f /usr/share/doc/asmref/asmdis_help.txt
	rm -f /usr/share/man/man1/asmdis.1.gz
#
release: tar deb rpm
#
tar:
	strip asmdis
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmdis-$(VERSION).tar.gz -C .. AsmDis ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmdis
	chown --reference Makefile ../release/asmdis*
	rm -f backup*
#
