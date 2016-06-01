;--------------------------------------------------------------
;>1 syscall
; sys_timer_delete - kernel function                        
;
;    INPUTS 
;     see AsmRef function -> sys_timer_delete                                    
;
;    Note: functon call consists of four instructions
;          
;          sys_timer_delete:                                 
;              mov  eax,263    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_timer_delete
sys_timer_delete:
	mov	eax,263
	int	byte 80h
	or	eax,eax
	ret