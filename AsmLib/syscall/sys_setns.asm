;--------------------------------------------------------------
;>1 syscall
; sys_setns - kernel function                               
;
;    INPUTS 
;     see AsmRef function -> sys_setns                                           
;
;    Note: functon call consists of four instructions
;          
;          sys_setns:                                        
;              mov  eax,346    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_setns
sys_setns:
	mov	eax,346
	int	byte 80h
	or	eax,eax
	ret