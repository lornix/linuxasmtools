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
	install -s crt_test /usr/bin
#
uninstall:
	rm -f /usr/bin/crt_test
#
release: tar deb rpm
#
tar:
	strip crt_test
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/crt_test-$(VERSION).tar.gz -C .. CrtTest
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=crt_test
	chown --reference Makefile ../../release/crt_test*
	rm -f backup*
#
