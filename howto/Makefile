#
# usage:  make         - compile asmedit executable
#         make clean   - remove binaries
#         make install - install files
#         make release - create release file
#
include ../Makefile.Common
#
# template for each source compile
%.o:    %.$(T)
	$(CC) $(DEBUG) $(CFLAGS) $<

# template for link
%:      %.o
	$(LD) $^ $(LFLAGS) -o $@ $(LIBS)

all:	pre $(targets)

$(objs):

pre:
	@if test -e $(LIBS) ; then \
		echo "asmlib found, compilng howTos" ; \
	else  \
		echo "asmlib not found, needed by Examples" ; \
		suspend ; \
	fi


clean:
	rm -f $(objs) $(targets) *~
