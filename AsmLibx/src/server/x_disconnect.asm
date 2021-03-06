
;   Copyright (C) 2007 Jeff Owens
;
;   This program is free software: you can redistribute it and/or modify
;   it under the terms of the GNU General Public License as published by
;   the Free Software Foundation, either version 3 of the License, or
;   (at your option) any later version.
;
;   This program is distributed in the hope that it will be useful,
;   but WITHOUT ANY WARRANTY; without even the implied warranty of
;   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;   GNU General Public License for more details.
;
;   You should have received a copy of the GNU General Public License
;   along with this program.  If not, see <http://www.gnu.org/licenses/>.


  [section .text align=1]

  extern socket_fd
;---------------------
;>1 server
;  x_disconnect - disconnect from x server
; INPUTS
;  [socket_fd] - global set by x_connect

; OUTPUT:
;   "js" flag set if error
;              
; NOTES
;   source file: x_disconnect
;<
; * ----------------------------------------------

  global x_disconnect
x_disconnect:
  mov	ebx,[socket_fd]
  mov	eax,6
  int	byte 80h
  or	eax,eax
  ret

