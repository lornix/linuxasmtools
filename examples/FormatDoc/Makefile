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
	install -s format_doc /usr/bin
#
uninstall:
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
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=format_doc
	chown --reference Makefile ../../release/format_doc*
	rm -f backup*
#
