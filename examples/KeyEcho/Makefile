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
	echo "installing key_echo in /usr/bin"
	install -s key_echo /usr/bin
#
uninstall:
	echo "uninstalling key_echo in /usr/bin"
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
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=key_echo
	chown --reference Makefile ../../release/key_echo*
	rm -f backup*
#
