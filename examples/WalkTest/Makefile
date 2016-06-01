include ../../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
install:
	install -s walktest /usr/bin/walktest
#
uninstall:
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
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=walktest
	chown --reference Makefile ../../release/walktest*
	rm -f backup*
#
