include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	@-rm -f $(TARGETS) $(OBJS)
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	echo "installing asmlinks in /usr/bin"
	install -s asmlinks /usr/bin
	install -D -m 666 asmlinks.1.gz /usr/share/man/man1/
#
uninstall:
	echo "uninstalling asmlinks at /usr/bin"
	rm -f /usr/bin/asmlinks
	rm -f /usr/share/man/man1/asmlinks.1.gz
#
doc:
	../txt2man -t AsmLinks asmlinks.txt | gzip -c > asmlinks.1.gz
#
release: tar deb rpm
#
tar:
	strip asmlinks
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmlinks-$(VERSION).tar.gz -C .. AsmLinks
#
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmlinks
	chown --reference Makefile ../release/asmlinks*
	rm -f backup*
#
