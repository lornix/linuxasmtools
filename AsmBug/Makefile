include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
doc:
	../txt2man -t AsmBug asmbug.txt | gzip -c > asmbug.1.gz
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	install -s asmbug /usr/bin/asmbug
	install -D -m 666 asmbug.1.gz /usr/share/man/man1/asmbug.1.gz
#
uninstall:
	rm -f /usr/bin/asmbug
	rm -f /usr/share/man/man1/asmbug.1.gz
#
release: tar deb rpm
#
tar:
	strip asmbug
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmbug-$(VERSION).tar.gz -C .. AsmBug ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmbug
	chown --reference Makefile ../release/asmbug*
	rm -f backup*
#
