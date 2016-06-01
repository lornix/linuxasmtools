;--------------------------------------------------------------
;>1 syscall
; sys_recvmmsg - kernel function                            
;
;    INPUTS 
;     see AsmRef function -> sys_recvmmsg                                        
;
;    Note: functon call consists of four instructions
;          
;          sys_recvmmsg:                                     
;              mov  eax,337    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_recvmmsg
sys_recvmmsg:
	mov	eax,337
	int	byte 80h
	or	eax,eax
	ret