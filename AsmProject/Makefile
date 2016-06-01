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
	install -s asmproject /usr/bin/asmproject
	install -D -m 666 asmproject.1.gz /usr/share/man/man1/asmproject.1.gz
#
uninstall:
	rm -f /usr/bin/asmproject
	rm -f /usr/share/man/man1/asmproject.1.gz
#
doc:
	../txt2man -t AsmProject asmproject.txt | gzip -c > asmproject.1.gz
#
release: tar deb rpm
#
tar:
	strip asmproject
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmproject-$(VERSION).tar.gz -C .. AsmProject
#
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmproject
	chown --reference Makefile ../release/asmproject*
	rm -f backup*
#
