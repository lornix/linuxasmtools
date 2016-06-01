;--------------------------------------------------------------
;>1 syscall
; sys_rt_tgsigqueueinfo - kernel function                   
;
;    INPUTS 
;     see AsmRef function -> sys_rt_tgsigqueueinfo                               
;
;    Note: functon call consists of four instructions
;          
;          sys_rt_tgsigqueueinfo:                            
;              mov  eax,335    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_rt_tgsigqueueinfo
sys_rt_tgsigqueueinfo:
	mov	eax,335
	int	byte 80h
	or	eax,eax
	ret