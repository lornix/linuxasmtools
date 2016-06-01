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
	echo "installing format_doc in /usr/bin"
	install -s format_doc /usr/bin
#
uninstall:
	echo "uninstalling format_doc "
	rm -f /usr/bin/format_doc
#
release: tar deb rpm
#
tar:
	strip format_doc
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/format_doc-$(VERSION).tar.gz -C .. FormatDoc
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=format_doc
	chown --reference Makefile ../../release/format_doc*
	rm -f backup*
