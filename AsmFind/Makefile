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
	../txt2man -t AsmFind asmfind.txt | gzip -c > asmfind.1.gz
#
install:
	install -s asmfind /usr/bin
	install -D -m 666 asmfind.1.gz /usr/share/man/man1/
	install -D -m 666 ../asmview/asmview.1.gz /usr/share/man/man1/
	install -s ../AsmView/asmview /usr/bin/asmview
	install  ../AsmView/viewer /usr/bin/viewer
	install  ../AsmView/opener /usr/bin/opener
#
uninstall:
	rm -f /usr/bin/asmfind
	rm -f /usr/share/doc/asmref/asmfind.txt
	rm -f /usr/share/man/man1/asmfind.1.gz
#
release: tar deb rpm
#
tar:
	strip asmfind
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmfind-$(VERSION).tar.gz -C .. AsmFind AsmView
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmfind
	chown --reference Makefile ../release/asmfind*
	rm -f backup*
#
