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
	echo "asmlib tutor doc"
#
release: tar
#
tar:
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/asmlib_tutor-$(VERSION).tar.gz -C .. AsmLib_tutor
#
