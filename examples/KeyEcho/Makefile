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
	install -s key_echo /usr/bin
#
uninstall:
	rm -f /usr/bin/key_echo
#
release: tar deb rpm
#
tar:
	strip key_echo
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/key_echo-$(VERSION).tar.gz -C .. KeyEcho
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=key_echo
	chown --reference Makefile ../../release/key_echo*
	rm -f backup*
#
