;--------------------------------------------------------------
;>1 syscall
; sys_mq_notify - kernel function                           
;
;    INPUTS 
;     see AsmRef function -> sys_mq_notify                                       
;
;    Note: functon call consists of four instructions
;          
;          sys_mq_notify:                                    
;              mov  eax,281    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mq_notify
sys_mq_notify:
	mov	eax,281
	int	byte 80h
	or	eax,eax
	ret