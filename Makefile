#
#
# usage:  make         - compile asmedit executable
#         make clean   - touch all source files
#         make install - install files
#         make release - create release file
#
# note: to create a release
#           1. make clean
#           2. make
#           3. make release  (needed for make doc web)
#           2. make doc
#           4. make release  (create new release with updated docs)
#           5. make doc      (add asmtools-...tar.gz with latest
######################################################
#
include Makefile.Common
#
#DIRS - used for install,uninstall
# DIRS = AsmLib AsmLibx AsmEdit AsmMgr AsmRef AsmPlan AsmPub AsmSrc \
#        AsmView AsmFind AsmTimer ElfDecode AsmDis AsmBug AsmFile \
#        AsmTrace AsmLinks AsmMenu FileBrowse FileSet MiniBug Domac Tracex \
#        Xhelper Copy AsmIDE
#ADIRS - used as destination for README,COPYING,INSTALL files
ADIRS = AsmLib AsmLibx AsmEdit AsmMgr AsmRef \
        examples/FormatDoc examples/KeyEcho examples/CrtTest \
	examples/Ainfo examples/AsmColor AsmView AsmFind AsmTimer \
	AsmDis AsmBug AsmFile AsmTrace AsmLinks AsmMenu \
	examples/Sort examples/StepTest examples/WalkTest \
	FileBrowse FileSet AsmPlan AsmPub ElfDecode MiniBug Domac \
        AsmSrc Tracex Xhelper Copy AsmIDE
#CDIRS - used for compiles
CDIRS = AsmLib AsmLib_tutor AsmLibx AsmEdit AsmMgr AsmRef \
        examples/FormatDoc examples/KeyEcho examples/CrtTest \
	examples/Ainfo examples/AsmColor \
	examples/Sort examples/StepTest examples/WalkTest \
	AsmMenu AsmEdit/AsmeditSetup FileBrowse \
	AsmEdit/ShowSysErr AsmPlan AsmPub\
	FileSet AsmMgr/Setup ElfDecode\
        AsmView AsmFind AsmTimer \
	AsmDis AsmBug AsmFile AsmTrace AsmLinks MiniBug Domac \
	Tracex Xhelper Copy AsmIDE
#DDIRS - used to make documentation
DDIRS = AsmLib AsmLib_tutor AsmLibx AsmBug AsmDis AsmEdit AsmMenu AsmFile FileSet \
	AsmFind AsmLinks AsmMgr AsmProject AsmPlan AsmPub \
	AsmRef AsmSrc AsmTimer AsmTrace AsmView MiniBug Domac Tracex \
	Xhelper Copy  web
#RDIRS - used to make releases
RDIRS = AsmLib AsmLib_tutor AsmLibx AsmEdit AsmMgr AsmRef AsmPlan AsmPub AsmSrc \
       AsmView AsmFind AsmTimer AsmMenu \
       FileBrowse FileSet examples/Ainfo examples/AsmColor \
       examples/CrtTest examples/FormatDoc examples/KeyEcho \
       examples/Sort examples/StepTest examples/WalkTest \
       AsmDis AsmBug AsmFile AsmTrace AsmLinks AsmProject \
       ElfDecode MiniBug Domac Tracex Xhelper Copy AsmIDE \
#
# shell command to execute make in all directories
DO_MAKE = @ for i in $(DIRS); do $(MAKE) -C $$i $@; done
DO_INSTALL = @ for i in $(DIRS); do $(MAKE) -C $$i install; done
DO_UNINSTALL = @ for i in $(DIRS); do $(MAKE) -C $$i uninstall; done
DO_RELEASE = @ for i in $(RDIRS); do $(MAKE) -C $$i release; done
DO_DOC = @ for i in $(DDIRS); do $(MAKE) -C $$i doc; done
#
all:
	for dir in $(DIRS); do $(MAKE) -C $$dir; done
#
clean:
	for dir in $(DIRS); do $(MAKE) -C $$dir clean; done
	-rm -rf release
#
docs:	post docs2
#
post:
	#for i in $(adirs); do cp -f README ./$$i/README; done
	#for i in $(adirs); do cp -f COPYING ./$$i/COPYING; done
	#for i in $(adirs); do cp -f INSTALL ./$$i/INSTALL; done
#
docs2:	$(ddirs)
	@if test -e /usr/bin/asmpub ; \
	then \
	for i in $(ddirs); do $(MAKE) -C $$i doc; done ; \
	else \
	echo "AsmPub needed to rebuild documentation" ; \
	echo "After this install try  -  make doc" ; \
	echo "press  Enter key to continue" ; \
	read AKEY ; \
	fi
#
install:
	$(DO_INSTALL)
#
uninstall:
	$(DO_UNINSTALL)
	@if test -w /etc/passwd ; \
	then \
	 echo "uninstalling /tmp files" ; \
	 rm -f /tmp/asmedit.tmp.* ; \
	 rm -f /tmp/find.tmp ; \
	 rm -f /tmp/tmp.dir ; \
	 rm -f /tmp/left.0 ; \
	 rm -f /tmp/right.0 ; \
	 rm -f /usr/share/man/man1/asmtools.1.gz ; \
	else \
	  echo "-" ; \
	  echo "Root access needed to uninstall /tmp files" ; \
	  fi
#
#	TODO
release: tar deb rpm
#
tar:
	if [ ! -e "release" ] ; then mkdir release ; fi
	rm -f release/*.tar.gz
	rm -f release/*.deb
	rm -f release/*.rpm
	tar cfz ./release/asmtools-$(VERSION).tar.gz --exclude=release --exclude="web/out/*.gz" --exclude="web/out/*.deb" --exclude="web/out/*.rpm" -C .. asmtools
	$(DO_RELEASE)
#
deb:
	checkinstall -D --pkgversion=$(VERSION) --pakdir=./release --maintainer=jeff@linuxasmtools.net -y --pkgname=asmtools
#
rpm:
	checkinstall -R --pkgversion=$(VERSION) --pakdir=./release -y --pkgname=asmtools
	chown --reference Makefile ./release/asmtools*
	rm -f backup*
#
#
