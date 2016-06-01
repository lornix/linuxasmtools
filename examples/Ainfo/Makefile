include ../../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	echo "installing ainfo in /usr/bin"
	install -s ainfo /usr/bin
#
uninstall:
	echo "uninstalling ainfo "
	rm -f /usr/bin/ainfo
#
clean:
	-rm -f $(TARGETS) $(OBJS)
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
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=ainfo
	chown --reference Makefile ../../release/ainfo*
	rm -f backup*
#
