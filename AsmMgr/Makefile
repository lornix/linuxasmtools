include ../Makefile.Common
#
all:  $(DIRS)
	@for i in $(DIRS); do $(MAKE) -C $$i all; done
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t AsmMgr asmmgr.txt | gzip -c > asmmgr.1.gz
#
install:
	install -s asmmgr /usr/bin/asmmgr
	install -s ../AsmProject/asmproject /usr/bin/asmproject
	install -s ../AsmMenu/asmmenu /usr/bin/asmmenu
	install -s ../FileSet/fileset /usr/bin/fileset
	install  scripts/opener /usr/bin/opener
	install  scripts/viewer /usr/bin/viewer
	install -D -m 666 asmmgr.1.gz /usr/share/man/man1/asmmgr.1.gz
	install -D -s Setup/setup /usr/share/asmmgr/setup
	install -D -m 666 tables/top_buttons.tbl /usr/share/asmmgr/top_buttons.tbl
	install -D -m 666 tables/config.tbl /usr/share/asmmgr/config.tbl
	install -D -m 666 tables/project.tbl /usr/share/asmmgr/project.tbl
	install -D scripts/upak /usr/share/asmmgr/upak
	install -D scripts/pak /usr/share/asmmgr/pak
	install -D scripts/compar /usr/share/asmmgr/compar
	install -D scripts/print /usr/share/asmmgr/print
	install -D scripts/find /usr/share/asmmgr/find
	install -D scripts/quit /usr/share/asmmgr/quit
	install -D scripts/make /usr/share/asmmgr/make
	install -D scripts/debug /usr/share/asmmgr/debug
#
uninstall:
	rm -f /usr/bin/asmmgr
	rm -f /usr/bin/asmproject
	rm -f /usr/bin/opener
	rm -f /usr/bin/viewer
	rm -rf /usr/share/asmmgr
#
release: tar deb rpm
#
tar:
	strip asmmgr
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmmgr-$(VERSION).tar.gz -C .. AsmMgr AsmProject FileSet AsmMenu AsmView examples/AsmColor
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmmgr
	chown --reference Makefile ../release/asmmgr*
	rm -f backup*
#
