;--------------------------------------------------------------
;>1 syscall
; sys_name_to_handle_at - kernel function                   
;
;    INPUTS 
;     see AsmRef function -> sys_name_to_handle_at                               
;
;    Note: functon call consists of four instructions
;          
;          sys_name_to_handle_at:                            
;              mov  eax,341    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_name_to_handle_at
sys_name_to_handle_at:
	mov	eax,341
	int	byte 80h
	or	eax,eax
	ret