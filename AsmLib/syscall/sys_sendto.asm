;--------------------------------------------------------------
;>1 syscall
; sys_sendto - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_sendto                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_sendto:                                       
;              mov  eax,369    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_sendto
sys_sendto:
	mov	eax,369
	int	byte 80h
	or	eax,eax
	ret