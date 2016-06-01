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
	install -s tracex /usr/bin
	install -D tracex.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/tracex
	rm -f /usr/share/man/man1/tracex.1.gz
#
doc:
	../txt2man -t Tracex tracex.txt | gzip -c > tracex.1.gz
#
release: tar deb rpm
#
tar:
	strip tracex
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/tracex-$(VERSION).tar.gz -C .. Tracex
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=tracex
	chown --reference Makefile ../release/tracex*
	rm -f backup*
#
