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
	echo "installing ainfo in /usr/bin"
	install -s ainfo /usr/bin
#
uninstall:
	echo "uninstalling ainfo "
	rm -f /usr/bin/ainfo
#
release: tar deb rpm
#
tar:
	strip ainfo
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/ainfo-$(VERSION).tar.gz -C .. Ainfo
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=ainfo
	chown --reference Makefile ../../release/ainfo*
	rm -f backup*
#
