;--------------------------------------------------------------
;>1 syscall
; sys_clock_settime - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_clock_settime                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_clock_settime:                                
;              mov  eax,264    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_clock_settime
sys_clock_settime:
	mov	eax,264
	int	byte 80h
	or	eax,eax
	ret