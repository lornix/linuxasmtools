;--------------------------------------------------------------
;>1 syscall
; sys_sched_getattr - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_sched_getattr                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_sched_getattr:                                
;              mov  eax,352    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_sched_getattr
sys_sched_getattr:
	mov	eax,352
	int	byte 80h
	or	eax,eax
	ret