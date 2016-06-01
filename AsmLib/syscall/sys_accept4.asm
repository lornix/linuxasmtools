;--------------------------------------------------------------
;>1 syscall
; sys_accept4 - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_accept4                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_accept4:                                      
;              mov  eax,364    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_accept4
sys_accept4:
	mov	eax,364
	int	byte 80h
	or	eax,eax
	ret