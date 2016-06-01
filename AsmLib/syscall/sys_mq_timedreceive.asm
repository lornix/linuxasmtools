;--------------------------------------------------------------
;>1 syscall
; sys_mq_timedreceive - kernel function                     
;
;    INPUTS 
;     see AsmRef function -> sys_mq_timedreceive                                 
;
;    Note: functon call consists of four instructions
;          
;          sys_mq_timedreceive:                              
;              mov  eax,280    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mq_timedreceive
sys_mq_timedreceive:
	mov	eax,280
	int	byte 80h
	or	eax,eax
	ret