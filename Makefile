ASSEMB			= as
RM				= rm -rf
BIN				= boot.bin
LINKER			= ld
LINKER_FLAGS	= -Ttext 0x7C00 --oformat=binary
EMU				= qemu-system-i386
EMU_FLAGS		= -machine ubuntu -drive
OBJS			= $(wildcard *.o)

make_lists:
	make -C boot

link: $(OBJS)
	$(LINKER) $(LINKER_FLAGS) $(OBJS) -o $(BIN)
run:
	$(EMU) $(EMU_FLAGS) format=raw,file=$(BIN)
clean:
	$(RM) *.o *.bin
