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
	../txt2man -t AsmIDE asmide.txt | gzip -c > asmide.1.gz
#
install:	asmide
	install ../AsmRef/asmref /usr/bin/asmref
	install ../AsmLinks/asmlinks /usr/bin/asmlinks
	install -D -m 666 ../AsmRef/asmref.1.gz /usr/share/man/man1/asmref.1.gz
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
	install -D -m 666 ../AsmRef/asmref.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/k_name_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/k_num_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/k_type_calls.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/k_code.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/asmlibe.lnk /usr/share/doc/asmref/
	install -D -m 666 ../AsmRef/asmlibxe.lnk /usr/share/doc/asmref/
	install -s ../MiniBug/minibug /usr/bin/minibug
	install -D -m 666 ../MiniBug/minibug.1.gz /usr/share/man/man1/minibug.1.gz
	install -D -m 644 ../asmlib.a /usr/lib/asmlib.a
	install -s asmide /usr/bin/asmide
#
uninstall:
	rm -f /usr/bin/asmref
	rm -f /usr/share/man/man1/asmref.1.gz
	rm -f -r /usr/share/doc/asmref/*
	rmdir /usr/share/doc/asmref
	rm -f /usr/bin/minibug
	rm -f /usr/share/man/man1/minibug.1.gz
	rm -f /usr/lib/asmlib.a
	rm -f /usr/bin/asmide
#
release: tar deb rpm
#
tar:
	strip asmide
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmide-$(VERSION).tar.gz -C .. AsmIDE MiniBug asmlib.a AsmRef AsmLinks doc AsmIDE/AsmIDE_install.txt
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmide
	chown --reference Makefile ../release/asmide*
	rm -f backup*
#
