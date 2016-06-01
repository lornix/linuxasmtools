;--------------------------------------------------------------
;>1 syscall
; sys_mq_timedsend - kernel function                        
;
;    INPUTS 
;     see AsmRef function -> sys_mq_timedsend                                    
;
;    Note: functon call consists of four instructions
;          
;          sys_mq_timedsend:                                 
;              mov  eax,279    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_mq_timedsend
sys_mq_timedsend:
	mov	eax,279
	int	byte 80h
	or	eax,eax
	ret