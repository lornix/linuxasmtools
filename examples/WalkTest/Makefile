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
	echo "installing walktest in /usr/bin"
	install -s walktest /usr/bin/walktest
#
uninstall:
	echo "uninstalling walktest in /usr/bin"
	rm -f /usr/bin/walktest
#
release: tar deb rpm
#
tar:
	strip walktest
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/walktest-$(VERSION).tar.gz -C .. WalkTest
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=walktest
	chown --reference Makefile ../../release/walktest*
	rm -f backup*
#
