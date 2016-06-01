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
	../txt2man -t AsmTimer asmtimer.txt | gzip -c > asmtimer.1.gz
#
install:
	install -s asmtimer /usr/bin
	install -D -m 666 asmtimer.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/asmtimer
	rm -f /usr/share/man/man1/asmtimer.1.gz
#
release: tar deb rpm
#
tar:
	strip asmtimer
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmtimer-$(VERSION).tar.gz -C .. AsmTimer
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmtimer
	chown --reference Makefile ../release/asmtimer*
	rm -f backup*
#
