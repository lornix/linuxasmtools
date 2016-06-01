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
	install -s asmtrace /usr/bin
	install -D asmtrace.1.gz /usr/share/man/man1/
#
uninstall:
	rm -f /usr/bin/asmtrace
	rm -f /usr/share/man/man1/asmtrace.1.gz
#
doc:
	../txt2man -t AsmTrace asmtrace.txt | gzip -c > asmtrace.1.gz
#
release: tar deb rpm
#
tar:
	strip asmtrace
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmtrace-$(VERSION).tar.gz -C .. AsmTrace
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmtrace
	chown --reference Makefile ../release/asmtrace*
	rm -f backup*
#
