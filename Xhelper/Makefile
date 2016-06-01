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
	../txt2man -t xhelper xhelper.txt | gzip -c > xhelper.1.gz
#
install:
	install -s xhelper /usr/bin/xhelper
	install -D -m 666 xhelper.1.gz /usr/share/man/man1/xhelper.1.gz
#
uninstall:
	rm -f /usr/bin/xhelper
	rm -f /usr/share/man/man1/xhelper.1.gz
#
release: tar deb rpm
#
tar:
	strip xhelper
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/xhelper-$(VERSION).tar.gz -C .. Xhelper
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=xhelper
	chown --reference Makefile ../release/xhelper*
	rm -f backup*
#
