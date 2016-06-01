include ../Makefile.Common
#
all:	$(TARGETS)
	@for i in $(DIRS); do $(MAKE) -C $$i all; done
#
$(OBJS):
#
clean:
	@for i in $(DIRS); do $(MAKE) -C $$i clean; done
	@-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t AsmEdit asmedit.txt | gzip -c > asmedit.1.gz
#
# the "install" program uses flags
#        -D       create any needed directories
#        -s       strip executables
#        -m 644   set file attributes to 644 octal
install:
	echo "installing asmedit in /usr/bin"
	install -s -m 777 asmedit /usr/bin
	install -s ../AsmMenu/asmmenu /usr/bin/asmmenu
	echo "installing  support programs at /usr/share/asmedit"
	install -D -s ../FileBrowse/file_browse /usr/share/asmedit/file_browse
	install -D -s ShowSysErr/show_sys_err /usr/share/asmedit/show_sys_err
	install -D -s -m 777 AsmeditSetup/asmedit_setup /usr/share/asmedit/asmedit_setup
	install -D Scripts/a.f3 /usr/share/asmedit/a.f3
	install -D Scripts/a.f4 /usr/share/asmedit/a.f4
	install -D Scripts/a.f5 /usr/share/asmedit/a.f5
	install -D Scripts/a.f6 /usr/share/asmedit/a.f6
	install -D Scripts/a.f7 /usr/share/asmedit/a.f7
	install -D -m 666 asmedit.1.gz /usr/share/man/man1/asmedit.1.gz
#
uninstall:
	echo "uninstalling asmedit from /usr/bin"
	rm -f /usr/bin/asmedit
	rm -f /usr/bin/asmmenu
	rm -f /usr/share/man/man1/asmedit.1.gz
	echo "uninstalling  support programs at /usr/share/asmedit"
	rm -f /usr/share/asmedit/file_browse
	rm -f /usr/share/asmedit/show_sys_err
	rm -f /usr/share/asmedit/asmedit_setup
	rm -f /usr/share/asmedit/a.f3
	rm -f /usr/share/asmedit/a.f4
	rm -f /usr/share/asmedit/a.f5
	rm -f /usr/share/asmedit/a.f6
	rm -f /usr/share/asmedit/a.f7
	rm -f /usr/share/asmedit/*
	rmdir /usr/share/asmedit
#
release: tar deb rpm
#
tar:
	strip asmedit
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmedit-$(VERSION).tar.gz -C .. AsmBug AsmMenu FileBrowse
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=../release --maintainer=jeff@linuxasmtools.net -y
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=../release -y --pkgname=asmedit
	chown --reference Makefile ../release/asmedit*
	rm -f backup*
#
