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
	install -s asmplan /usr/bin
	install -D -m 666 asmplan.1.gz /usr/share/man/man1/asmplan.1.gz
#
uninstall:
	rm -f /usr/bin/asmplan
	rm -f /usr/share/man/man1/asmplan.1.gz
#
doc:
	../txt2man -t AsmPlan asmplan.txt | gzip -c > asmplan.1.gz
#
release: tar deb rpm
#
tar:
	strip asmplan
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmplan-$(VERSION).tar.gz -C .. AsmPlan
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmplan
	chown --reference Makefile ../release/asmplan*
	rm -f backup*
#
