;--------------------------------------------------------------
;>1 syscall
; sys_timer_settime - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_timer_settime                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_timer_settime:                                
;              mov  eax,260    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_timer_settime
sys_timer_settime:
	mov	eax,260
	int	byte 80h
	or	eax,eax
	ret