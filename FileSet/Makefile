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
	echo "installing fileset in /usr/bin"
	install -s fileset /usr/bin/fileset
	install -D -m 666 fileset.1.gz /usr/share/man/man1/fileset.1.gz
#
uninstall:
	echo "we are root, uninstall /usr/bin/fileset"
	rm -f /usr/bin/fileset
	rm -f /usr/share/man/man1/fileset.1.gz
#
doc:
	../txt2man -t FileSet fileset.txt | gzip -c > fileset.1.gz
#
release: tar deb rpm
#
tar:
	strip fileset
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/fileset-$(VERSION).tar.gz -C .. FileSet
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=fileset
	chown --reference Makefile ../release/fileset*
	rm -f backup*
#
