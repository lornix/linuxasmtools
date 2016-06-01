;--------------------------------------------------------------
;>1 syscall
; sys_mlock2 - kernel function                              
;
;    INPUTS 
;     see AsmRef function -> sys_mlock2                                          
;
;    Note: functon call consists of four instructions
;          
;          sys_mlock2:                                       
;              mov  eax,376    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mlock2
sys_mlock2:
	mov	eax,376
	int	byte 80h
	or	eax,eax
	ret