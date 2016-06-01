;--------------------------------------------------------------
;>1 syscall
; sys_fanotify_init - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_fanotify_init                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_fanotify_init:                                
;              mov  eax,338    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_fanotify_init
sys_fanotify_init:
	mov	eax,338
	int	byte 80h
	or	eax,eax
	ret