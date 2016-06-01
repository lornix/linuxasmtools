include ../../Makefile.Common
#
all:	$(TARGETS)
#
$(OBJS):
#
clean:
	-rm -f $(TARGETS) $(OBJS)
#
doc:
	../txt2man -t Align align.txt | gzip -c > align.1.gz
#
release: tar
#
tar:
	strip align
	if [ ! -e "../release" ] ; then mkdir ../release ; fi
	tar cfz ../release/align-$(VERSION).tar.gz -C .. Align
#
