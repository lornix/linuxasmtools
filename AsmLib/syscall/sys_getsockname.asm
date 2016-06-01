;--------------------------------------------------------------
;>1 syscall
; sys_getsockname - kernel function                         
;
;    INPUTS 
;     see AsmRef function -> sys_getsockname                                     
;
;    Note: functon call consists of four instructions
;          
;          sys_getsockname:                                  
;              mov  eax,367    
;              int  byte 80h
;              or   eax,eax
;              ret
;<;
;------------------------------------------------------------------
  [section .text align=1]

  global sys_getsockname
sys_getsockname:
	mov	eax,367
	int	byte 80h
	or	eax,eax
	ret