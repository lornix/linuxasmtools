;--------------------------------------------------------------
;>1 syscall
; sys_pwritev - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_pwritev                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_pwritev:                                      
;              mov  eax,334    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_pwritev
sys_pwritev:
	mov	eax,334
	int	byte 80h
	or	eax,eax
	ret