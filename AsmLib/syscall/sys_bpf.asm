;--------------------------------------------------------------
;>1 syscall
; sys_bpf - kernel function                                 
;
;    INPUTS 
;     see AsmRef function -> sys_bpf                                             
;
;    Note: functon call consists of four instructions
;          
;          sys_bpf:                                          
;              mov  eax,357    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_bpf
sys_bpf:
	mov	eax,357
	int	byte 80h
	or	eax,eax
	ret