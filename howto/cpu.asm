	extern crt_write
	extern block_read_all
	extern sys_exit

	global _start,main
main:
_start:
	mov	ecx,cpu_msg	        ;message ptr
	mov	edx,cpu_msg_size	;message length
	call	crt_write	        ;kernel call

	mov	ebx,cpuinfo_path
	mov	ecx,buffer
	mov	edx,buffer_size
	call	block_read_all
	or	eax,eax
	js	sc_exit		        ;exit if error

	mov	edx,eax		        ;size to edx
	mov	ecx,buffer	        ;data ptr
	call	crt_write

sc_exit:
	call	sys_exit

;----------
	[section .data]
cpuinfo_path: db '/proc/cpuinfo',0
cpu_msg:
        db      'The CPU is a computers engine.  It executes all programs',10
        db      'after converting them to machine code.  A computer can',10
        db      'have multiple cpu',0x27,'s (called multi core',0x27,'s) that work as a',10
        db      'team. When multiple cpu',0x27,'s are found, each one is described.',10
        db      10
        db      'The following Information about the CPU is obtained from',10
        db      'the Linux proc file system at:  /proc/cpuinfo',10,10,0
cpu_msg_size	equ $ - cpu_msg
;------------------------------------------------
	[section .bss]

buffer	resb	200
buffer_size equ $ - buffer
