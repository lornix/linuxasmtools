;--------------------------------------------------------------
;>1 syscall
; sys_copy_file_range - kernel function                     
;
;    INPUTS 
;     see AsmRef function -> sys_copy_file_range                                 
;
;    Note: functon call consists of four instructions
;          
;          sys_copy_file_range:                              
;              mov  eax,377    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_copy_file_range
sys_copy_file_range:
	mov	eax,377
	int	byte 80h
	or	eax,eax
	ret