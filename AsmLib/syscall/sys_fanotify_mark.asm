;--------------------------------------------------------------
;>1 syscall
; sys_fanotify_mark - kernel function                       
;
;    INPUTS 
;     see AsmRef function -> sys_fanotify_mark                                   
;
;    Note: functon call consists of four instructions
;          
;          sys_fanotify_mark:                                
;              mov  eax,339    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_fanotify_mark
sys_fanotify_mark:
	mov	eax,339
	int	byte 80h
	or	eax,eax
	ret