;--------------------------------------------------------------
;>1 syscall
; sys_open_by_handle_at - kernel function                   
;
;    INPUTS 
;     see AsmRef function -> sys_open_by_handle_at                               
;
;    Note: functon call consists of four instructions
;          
;          sys_open_by_handle_at:                            
;              mov  eax,342    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_open_by_handle_at
sys_open_by_handle_at:
	mov	eax,342
	int	byte 80h
	or	eax,eax
	ret