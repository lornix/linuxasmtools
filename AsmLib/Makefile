include ../Makefile.Common
#
all:
	$(MAKE) syscall
	$(MAKE) libs
	$(MAKE) archive
#
clean:
	-rm -f asmlib.a
	@for dir in $(DIRS); do $(MAKE) -C $$dir clean; done
#
archive:
	-rm -f asmlib.a
	find . -name '*.o' -print0 | xargs -0 ar rcs asmlib.a
	cp -f asmlib.a ../
#
libs:
	@for dir in $(DIRS); do $(MAKE) -C $$dir all; done
#
syscall:
	$(MAKE) make_syscall
	./make_syscall
#
test: test.o all
	$(LD) $(LDFLAGS) -o $@ $< $(LIBS)
#
doc:
	asmpub -f2 -n -s -r3 -i -oasmlib -k '*.asm'
	cp -f header1.txt ../asmlib.txt
	cat ../VERSION >> ../asmlib.txt
	cat header2.txt >> ../asmlib.txt
	cat asmlib.index >> ../asmlib.txt
	cat header3.txt >> ../asmlib.txt
	cat asmlib.txt >> ../asmlib.txt
	cat USAGE_NOTES.TXT >> ../asmlib.txt
	cp -f ../asmlib.txt ../doc/lib/asmlib.txt
	cp -f header2.txt asmlib_index.txt
	cat asmlib.index >> asmlib_index.txt
	rm -f ../asmlib.txt
	cp -f asmlib.txt doc-pak/
	cp -f asmlib_index.txt doc-pak/
#
install:
	install -D -m 644 ../asmlib.a /usr/lib/asmlib.a
#
uninstall:
	rm -f /usr/lib/asmlib.a
#
release: tar deb rpm
#
tar:
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmlib-$(VERSION).tar.gz -C .. AsmLib
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmlib
	chown --reference Makefile ../release/asmlib*
	rm -f backup*
#
