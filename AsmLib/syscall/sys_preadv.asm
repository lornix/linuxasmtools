;--------------------------------------------------------------
;>1 syscall
; sys_preadv - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_preadv                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_preadv:                                       
;              mov  eax,333    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_preadv
sys_preadv:
	mov	eax,333
	int	byte 80h
	or	eax,eax
	ret