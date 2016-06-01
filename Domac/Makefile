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
	install -s domac /usr/bin/domac
	install -D -m 666 domac.1.gz /usr/share/man/man1/domac.1.gz
#
uninstall:
	rm -f /usr/bin/domac
	rm -f /usr/share/man/man1/domac.1.gz
#
release: tar deb rpm
#
tar:
	strip domac
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/domac-$(VERSION).tar.gz -C .. Domac
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=domac
	chown --reference Makefile ../release/domac*
	rm -f backup*
#
