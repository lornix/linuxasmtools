#
#
# usage:  make         - compile asmedit executable
#         make clean   - touch all source files
#         make install - install files
#         make release - create release file
#
include ../Makefile.Common
#
all:	$(TARGETS)
#
# template for each source compile
%.o:    %.asm
	$(AS) $(ASFLAGS) $<
#
# template for link
%:      %.o
	$(LD) $^ $(LDFLAGS) -o $@ $(LIBS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS) *~
#
doc:
	../txt2man -t AsmDis asmdis.txt | gzip -c > asmdis.1.gz
#
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	@if test -w /etc/passwd
	then \
	 echo "installing asmdis in /usr/bin"
	 install -s asmdis  /usr/bin/asmdis
	 echo "installing  support programs at /usr/share/asmmgr"
	 install -D -m 666 asmdis_help.txt /usr/share/doc/asmref/asmdis_help.txt
	 install -D -m 666 asmdis.1.gz /usr/share/man/man1/asmdis.1.gz
	else \
	  echo "-"
	  echo "Root access needed to install at /usr/bin "
	  fi \
#
# asmpre is not uninstalled, it may be needed by other asmide programs
#
uninstall:
	@if test -w /etc/passwd
	then \
	 echo "uninstalling asmdis in /usr/bin"
	 rm -f /usr/bin/asmdis
	 echo "uninstalling  support programs for asmdis"
	 rm -f /usr/share/doc/asmref/asmdis_help.txt
	 rm -f /usr/share/man/man1/asmdis.1.gz
	else \
	  echo "-"
	  echo "Root access needed to uninstall at /usr/bin and /usr/share/asmmgr"
	  fi \
#
#
#
release: tar deb rpm
#
tar:
	strip asmdis
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmdis-$(VERSION).tar.gz -C .. AsmDis ElfDecode
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmdis
	chown --reference Makefile ../release/asmdis*
	rm -f backup*
#
