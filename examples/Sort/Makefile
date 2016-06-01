include ../../Makefile.Common
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
	echo "installing sort in /usr/bin"
	install -s sort /usr/bin
#
uninstall:
	echo "uninstalling sort "
	rm -f /usr/bin/sort
#
release: tar deb rpm
#
tar:
	strip sort
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/sort-$(VERSION).tar.gz -C .. Sort
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=sort
	chown --reference Makefile ../../release/sort*
	rm -f backup*
#
