;--------------------------------------------------------------
;>1 syscall
; sys_sched_setattr - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_sched_setattr                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_sched_setattr:                                
;              mov  eax,351    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_sched_setattr
sys_sched_setattr:
	mov	eax,351
	int	byte 80h
	or	eax,eax
	ret