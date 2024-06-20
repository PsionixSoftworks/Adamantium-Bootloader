	.code16
	.text
	.type _start, @function
	.globl _start
_start:
	/* Tell the BIOS that we want 80x25 Color Text Mode */
	movw 	$0x03, %AX
	int 	$0x10

/* Pad the rest of the bootloader with zeros and put the magic number as the last two bytes */
. = _start + 510
.word BOOT_MAGIC

.section .data
.set BOOT_MAGIC,							0xAA55
