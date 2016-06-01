;--------------------------------------------------------------
;>1 syscall
; sys_recvmsg - kernel function                             
;
;    INPUTS 
;     see AsmRef function -> sys_recvmsg                                         
;
;    Note: functon call consists of four instructions
;          
;          sys_recvmsg:                                      
;              mov  eax,372    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_recvmsg
sys_recvmsg:
	mov	eax,372
	int	byte 80h
	or	eax,eax
	ret