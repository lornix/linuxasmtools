include ../../Makefile.Common
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
	echo "installing asmcolor in /usr/bin"
	install -s asmcolor /usr/bin
	install -D -m 666 asmcolor.1.gz /usr/share/man/man1/
#
uninstall:
	echo "uninstalling asmcolor in /usr/bin"
	rm -f /usr/bin/asmcolor
#
doc:
	../../txt2man -t AsmColor asmcolor.txt | gzip -c > asmcolor.1.gz
#
release: tar deb rpm
#
tar:
	strip asmcolor
	if [ ! -e "../../release" ] ; then mkdir ../../release ; fi
	tar cfz ../../release/asmcolor-$(VERSION).tar.gz -C .. AsmColor
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../../release -y --pkgname=asmcolor
	chown --reference Makefile ../../release/asmcolor*
	rm -f backup*
#
