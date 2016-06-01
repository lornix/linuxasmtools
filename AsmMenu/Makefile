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
	../txt2man -t AsmMenu asmmenu.txt | gzip -c > asmmenu.1.gz
#
install:
	install -s asmmenu /usr/bin/asmmenu
	install -D -m 666 asmmenu.1.gz /usr/share/man/man1/asmmenu.1.gz
#
uninstall:
	rm -f /usr/bin/asmmenu
	rm -f /usr/share/man/man1/asmmenu.1.gz
#
release: tar deb rpm
#
tar:
	strip asmmenu
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmmenu-$(VERSION).tar.gz -C .. AsmMenu
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmmenu
	chown --reference Makefile ../release/asmmenu*
	rm -f backup*
#
