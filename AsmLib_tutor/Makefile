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
	echo "asmlib tutor doc"
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
#	@if [ ! -d ~/AsmLib_tutor ]
#	then \
#	mkdir ~/AsmLib_tutor
#	fi
#	rm -f ~/AsmLib_tutor/*
#	cp * ~/AsmLib_tutor
#
release: tar deb rpm
#
tar:
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmlib_tutor-$(VERSION).tar.gz -C .. AsmLib_tutor
#
deb:
#	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y --nodoc -d2
#
rpm:
#	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmlib_tutor --nodoc -d2
#	chown --reference Makefile ../release/asmlib_tutor*
#	rm -f backup*
#
