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
	echo "installing steptest in /usr/bin"
	install -s steptest /usr/bin/steptest
#
uninstall:
	echo "uninstalling steptest in /usr/bin"
	rm -f /usr/bin/steptest
#
release: tar deb rpm
#
tar:
	strip steptest
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/steptest-$(VERSION).tar.gz -C .. StepTest
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=steptest
	chown --reference Makefile ../../release/steptest*
	rm -f backup*
#
