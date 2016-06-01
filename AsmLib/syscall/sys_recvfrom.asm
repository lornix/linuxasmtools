;--------------------------------------------------------------
;>1 syscall
; sys_recvfrom - kernel function                            
;
;    INPUTS 
;     see AsmRef function -> sys_recvfrom                                        
;
;    Note: functon call consists of four instructions
;          
;          sys_recvfrom:                                     
;              mov  eax,371    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_recvfrom
sys_recvfrom:
	mov	eax,371
	int	byte 80h
	or	eax,eax
	ret