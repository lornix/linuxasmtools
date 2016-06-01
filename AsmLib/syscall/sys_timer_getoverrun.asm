;--------------------------------------------------------------
;>1 syscall
; sys_timer_getoverrun - kernel function                    
;
;    INPUTS 
;     see AsmRef function -> sys_timer_getoverrun                                
;
;    Note: functon call consists of four instructions
;          
;          sys_timer_getoverrun:                             
;              mov  eax,262    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_timer_getoverrun
sys_timer_getoverrun:
	mov	eax,262
	int	byte 80h
	or	eax,eax
	ret