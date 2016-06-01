include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	@-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t MiniBug minibug.txt | gzip -c > minibug.1.gz
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	install -s minibug /usr/bin/minibug
	install -D -m 666 minibug.1.gz /usr/share/man/man1/minibug.1.gz
#
uninstall:
	rm -f /usr/bin/minibug
	rm -f /usr/share/man/man1/minibug.1.gz
#
release: tar deb rpm
#
tar:
	strip minibug
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/minibug-$(VERSION).tar.gz -C .. MiniBug ElfDecode
#
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=minibug
	chown --reference Makefile ../release/minibug*
	rm -f backup*
#
