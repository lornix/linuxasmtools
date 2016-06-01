include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
install:
	install -s elfdecode  /usr/bin/elfdecode
#
uninstall:
	rm -f /usr/bin/elfdecode
#
release: tar deb rpm
#
tar:
	strip elfdecode
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/elfdecode-$(VERSION).tar.gz -C .. ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=elfdecode
	chown --reference Makefile ../release/elfdecode*
	rm -f backup*
#
