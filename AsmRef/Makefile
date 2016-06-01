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
	install asmref /usr/bin/asmref
	install ../AsmLinks/asmlinks /usr/bin/asmlinks
	install -D -m 666 asmref.1.gz /usr/share/man/man1/asmref.1.gz
	mkdir -p -m 777 /usr/share/doc/asmref
	mkdir -p -m 777 /usr/share/doc/asmref/cpu
	mkdir -p -m 777 /usr/share/doc/asmref/kfun
	mkdir -p -m 777 /usr/share/doc/asmref/kinfo
	mkdir -p -m 777 /usr/share/doc/asmref/lib
	mkdir -p -m 777 /usr/share/doc/asmref/progs
	mkdir -p -m 777 /usr/share/doc/asmref/snippets
	mkdir -p -m 777 /usr/share/doc/asmref/term
	mkdir -p -m 777 /usr/share/doc/asmref/tutor
	mkdir -p -m 777 /usr/share/doc/asmref/unix
	install -D -m 666 ../doc/cpu/* /usr/share/doc/asmref/cpu/
	install -D -m 666 ../doc/kfun/* /usr/share/doc/asmref/kfun/
	install -D -m 666 ../doc/kinfo/* /usr/share/doc/asmref/kinfo/
	install -D -m 666 ../doc/lib/* /usr/share/doc/asmref/lib/
	install -D -m 666 ../doc/progs/* /usr/share/doc/asmref/progs/
	install -D -m 666 ../doc/snippets/* /usr/share/doc/asmref/snippets/
	install -D -m 666 ../doc/term/* /usr/share/doc/asmref/term/
	install -D -m 666 ../doc/tutor/* /usr/share/doc/asmref/tutor/
	install -D -m 666 ../doc/unix/* /usr/share/doc/asmref/unix/
	install -D -m 666 asmref.lnk /usr/share/doc/asmref/
	install -D -m 666 k_name_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 k_num_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 k_type_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 k_code.lnk /usr/share/doc/asmref/
	install -D -m 666 asmlibe.lnk /usr/share/doc/asmref/
	install -D -m 666 asmlibxe.lnk /usr/share/doc/asmref/
#
uninstall:
	rm -f /usr/bin/asmref
	rm -f /usr/share/man/man1/asmref.1.gz
	echo "uninstalling  support documents at /usr/share/doc/asmref"
	rm -rf /usr/share/doc/asmref
#
doc:
	../txt2man -t AsmRef asmref.txt | gzip -c > asmref.1.gz
#
release: tar deb rpm
#
tar:
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmref-$(VERSION).tar.gz -C .. AsmRef AsmLinks doc
#
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmref
	chown --reference Makefile ../release/asmref*
	rm -f backup*
#
#
#
#
#
#
