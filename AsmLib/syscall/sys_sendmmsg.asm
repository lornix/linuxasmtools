;--------------------------------------------------------------
;>1 syscall
; sys_sendmmsg - kernel function                            
;
;    INPUTS 
;     see AsmRef function -> sys_sendmmsg                                        
;
;    Note: functon call consists of four instructions
;          
;          sys_sendmmsg:                                     
;              mov  eax,345    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_sendmmsg
sys_sendmmsg:
	mov	eax,345
	int	byte 80h
	or	eax,eax
	ret