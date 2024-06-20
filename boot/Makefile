SRC				= $(wildcard *.S)
BUILD			= $(SRC:.S=.o)
ASSEMB			= as

.PHONY: all
all: $(BUILD)
	@echo Finished building objects in /boot...

%.o: %.S
	$(ASSEMB) $< -o ../$@
