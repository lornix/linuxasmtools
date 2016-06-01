#
# usage:  make  - make library and test program
#         make test - make test program
#         make clean - remove built binaries
#         make doc - extract documentation from sources
#         make install - install to $HOME/.asmide/asmlibx.a
#         make release - create a release tar.gz file
#
include ../Makefile.Common
#
all:
	$(MAKE) -C src all
	$(MAKE) lib
	$(MAKE) demo
#
lib:
	rm -f asmlib.a
	find ./src -iname '*.o' -print0 | xargs -0 ar rcs asmlibx.a
	cp -f asmlibx.a ../
#
demo:
	$(MAKE) -C demo all
#
clean:
	$(MAKE) -C demo clean
	$(MAKE) -C src clean
	-rm -f asmlibx.a
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	install -D -m 644 asmlibx.a /usr/lib/asmlibx.a
#
uninstall:
	rm -f /usr/lib/asmlibx.a
#
#
doc:
	find . -name '*~' -print0 | xargs -0 rm -f \;
	asmpub -f2 -n -s -r3 -i -odocs/libx -k ./src/'*.asm'
	cp -f docs/header1.txt docs/asmlibx.txt
	cat VERSION >> docs/asmlibx.txt
	cat docs/header2.txt >> docs/asmlibx.txt
	cat docs/libx.index >> docs/asmlibx.txt
	cat docs/header3.txt >> docs/asmlibx.txt
	cat docs/libx.txt >> docs/asmlibx.txt
	cat docs/USAGE_NOTES.TXT >> docs/asmlibx.txt
	cp -f docs/asmlibx.txt  ../doc/lib/asmlibx.txt
	rm -f docs/libx.txt
	mv -f docs/libx.index docs/asmlibx_index.txt
#
release: tar deb rpm
#
tar:
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmlibx-$(VERSION).tar.gz -C .. AsmLibx
#
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmlibx
	chown --reference Makefile ../release/asmlibx*
	rm -f backup*
#
