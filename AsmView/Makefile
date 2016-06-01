include ../Makefile.Common
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
	install -s asmview /usr/bin
	install -m 777 viewer /usr/bin
	install -D -m 666 asmview.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/asmview
	rm -f /usr/bin/viewer
	rm -f /usr/share/man/man1/asmview.1.gz
#
doc:
	../txt2man -t AsmView asmview.txt | gzip -c > asmview.1.gz
#
release: tar deb rpm
#
tar:
	strip asmview
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmview-$(VERSION).tar.gz -C .. AsmView
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmview
	chown --reference Makefile ../release/asmview*
	rm -f backup*
#
