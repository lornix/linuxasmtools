;--------------------------------------------------------------
;>1 syscall
; sys_setsockopt - kernel function                          
;
;    INPUTS 
;     see AsmRef function -> sys_setsockopt                                      
;
;    Note: functon call consists of four instructions
;          
;          sys_setsockopt:                                   
;              mov  eax,366    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_setsockopt
sys_setsockopt:
	mov	eax,366
	int	byte 80h
	or	eax,eax
	ret