#
# usage: make  - make library and test program
#         make test - make test program
#         make clean - remove built binaries
#         make doc - extract documentation from sources
#         make install - install to $HOME/.asmide/asmlib.a
#         make release - create a release tar.gz file
#
include ../../Makefile.Common
#
all:	$(DIRS)
	@for dir in $(DIRS); do $(MAKE) -C $$dir $@; done
#
clean:	$(DIRS)
	@for dir in $(DIRS); do $(MAKE) -C $$dir $@; done
#
