include ../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t Domac domac.txt | gzip -c > domac.1.gz
#
install:
	install -s file_browse /usr/bin/file_browse
#
uninstall:
	rm -f /usr/bin/domac
	rm -f /usr/share/man/man1/domac.1.gz
#
release: tar deb rpm
#
tar:
	strip file_browse
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/file_browse-$(VERSION).tar.gz -C .. FileBrowse
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=file_browse
	chown --reference Makefile ../release/file_browse*
	rm -f backup*
#
