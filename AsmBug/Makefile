#
#
# usage:  make         - compile asmedit executable
#         make clean   - remove built binaries
#         make install - install files
#         make release - create release file
#
#
# modify the following as needed
#
# select one of the following:
#    EX = build all executables
#    LIB = build objects only
#          or build test programs if DEBUG=yes
#
OP = EX
#OP=LIB
#
include ../Makefile.Common
#
# template for each source compile
%.o:    %.asm
	$(AS) $(ASFLAGS) $<
#
# template for link
%:      %.o
	$(LD) $^ $(LDFLAGS) -o $@ $(LIBSX) $(LIBS)
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS) *~
#
doc:
	../txt2man -t AsmBug asmbug.txt | gzip -c > asmbug.1.gz
#
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
#        TODO
install:
	@if test -w /etc/passwd ; \
	then \
	 echo "installing asmbug in /usr/bin" ; \
	 install -s asmbug /usr/bin/asmbug ; \
	 install -D -m 666 asmbug.1.gz /usr/share/man/man1/asmbug.1.gz ; \
	else \
	  echo "-" ; \
	  echo "Root access needed to install at /usr/bin " ; \
	  fi \
#
# asmtools programs
#
#	TODO
uninstall:
	@if test -w /etc/passwd ; then \
		echo "uninstalling asmbug in /usr/bin" ; \
		rm -f /usr/bin/asmbug ; \
		echo "uninstalling  support programs for asmbug" ; \
		rm -f /usr/share/man/man1/asmbug.1.gz ; \
	else \
		echo "-" ; \
		echo "Root access needed to uninstall at /usr/bin " ; \
	fi \
#
#	TODO
release: tar deb rpm
#
tar:
	strip asmbug
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmbug-$(VERSION).tar.gz -C .. AsmBug ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmbug
	chown --reference Makefile ../release/asmbug*
	rm -f backup*
#
