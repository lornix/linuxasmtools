;--------------------------------------------------------------
;>1 syscall
; sys_socketpair - kernel function                          
;
;    INPUTS 
;     see AsmRef function -> sys_socketpair                                      
;
;    Note: functon call consists of four instructions
;          
;          sys_socketpair:                                   
;              mov  eax,360    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_socketpair
sys_socketpair:
	mov	eax,360
	int	byte 80h
	or	eax,eax
	ret