;--------------------------------------------------------------
;>1 syscall
; sys_syncfs - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_syncfs                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_syncfs:                                       
;              mov  eax,344    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_syncfs
sys_syncfs:
	mov	eax,344
	int	byte 80h
	or	eax,eax
	ret