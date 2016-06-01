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
	echo "installing asmfile in /usr/bin"
	install -s asmfile /usr/bin
	install -D asmfile.1.gz /usr/share/man/man1/
	echo "installing  support programs at /usr/share/asmfile"
	install -D scripts/viewer /usr/share/asmfile/viewer
	install -D scripts/upak /usr/share/asmfile/upak
	install -D scripts/pak /usr/share/asmfile/pak
	install -D scripts/compar /usr/share/asmfile/compar
	install -D scripts/print /usr/share/asmfile/print
#
uninstall:
	echo "uninstalling asmfile from /usr/bin"
	rm -f /usr/bin/asmfile
	rm -f /usr/share/man/man1/asmfile.1.gz
	echo "uninstalling  support programs at /usr/share/asmfile"
	rm -f /usr/share/asmfile/viewer
	rm -f /usr/share/asmfile/upak
	rm -f /usr/share/asmfile/pak
	rm -f /usr/share/asmfile/compar
	rm -f /usr/share/asmfile/print
	rm -f /usr/share/asmfile/*
	rmdir /usr/share/asmfile
#
doc:
	../txt2man -t AsmFile asmfile.txt | gzip -c > asmfile.1.gz
#
release: tar deb rpm
#
tar:
	strip asmfile
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmfile-$(VERSION).tar.gz -C .. AsmFile
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmfile
	chown --reference Makefile ../release/asmfile*
	rm -f backup*
#
