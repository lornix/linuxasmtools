;--------------------------------------------------------------
;>1 syscall
; sys_getsockopt - kernel function                          
;
;    INPUTS 
;     see AsmRef function -> sys_getsockopt                                      
;
;    Note: functon call consists of four instructions
;          
;          sys_getsockopt:                                   
;              mov  eax,365    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_getsockopt
sys_getsockopt:
	mov	eax,365
	int	byte 80h
	or	eax,eax
	ret