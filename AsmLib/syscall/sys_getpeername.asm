;--------------------------------------------------------------
;>1 syscall
; sys_getpeername - kernel function                         
;
;    INPUTS 
;     see AsmRef function -> sys_getpeername                                     
;
;    Note: functon call consists of four instructions
;          
;          sys_getpeername:                                  
;              mov  eax,368    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_getpeername
sys_getpeername:
	mov	eax,368
	int	byte 80h
	or	eax,eax
	ret