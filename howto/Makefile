#
# usage:  make         - compile asmedit executable
#         make clean   - remove binaries
#         make install - install files
#         make release - create release file
#
include ../Makefile.Common
#
# template for each source compile
%.o: %.asm
	$(ASM) $(DEBUG) $(ASFLAGS) $<

# template for link
%: %.o
	$(LD) $^ $(LFLAGS) -o $@ $(LIBS)

all:	$(TARGETS)

$(OBJS):

clean:
	rm -f $(OBJS) $(TARGETS) *~
