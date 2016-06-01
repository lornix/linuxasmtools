include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	install -s asmsrc  /usr/bin/asmsrc
	install -D -m 666 asmsrc.1.gz /usr/share/man/man1/asmsrc.1.gz
#
uninstall:
	rm -f /usr/bin/asmsrc
	rm -f /usr/share/man/man1/asmsrc.1.gz
#
doc:
	../txt2man -t AsmSrc asmsrc.txt | gzip -c > asmsrc.1.gz
#
release: tar deb rpm
#
tar:
	strip asmsrc
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmsrc-$(VERSION).tar.gz -C .. AsmSrc ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmsrc
	chown --reference Makefile ../release/asmsrc*
	rm -f backup*
#
