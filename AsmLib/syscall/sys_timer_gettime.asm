;--------------------------------------------------------------
;>1 syscall
; sys_timer_gettime - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_timer_gettime                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_timer_gettime:                                
;              mov  eax,261    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_timer_gettime
sys_timer_gettime:
	mov	eax,261
	int	byte 80h
	or	eax,eax
	ret