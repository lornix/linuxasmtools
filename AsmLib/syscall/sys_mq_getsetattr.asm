;--------------------------------------------------------------
;>1 syscall
; sys_mq_getsetattr - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_mq_getsetattr                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_mq_getsetattr:                                
;              mov  eax,282    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mq_getsetattr
sys_mq_getsetattr:
	mov	eax,282
	int	byte 80h
	or	eax,eax
	ret