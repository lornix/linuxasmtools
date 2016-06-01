;--------------------------------------------------------------
;>1 syscall
; sys_mq_unlink - kernel function                           
;
;    INPUTS 
;     see AsmRef function -> sys_mq_unlink                                       
;
;    Note: functon call consists of four instructions
;          
;          sys_mq_unlink:                                    
;              mov  eax,278    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mq_unlink
sys_mq_unlink:
	mov	eax,278
	int	byte 80h
	or	eax,eax
	ret