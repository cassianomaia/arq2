Include ..\Irvine32.inc
.data
;Menu struct
menuctrl BYTE 0
menu01  BYTE "              _________________________________________________  ",0
menu02  BYTE "             | _  _ _  _ ____ ____    ____ ____ ____ ____ ____ | ",0
menu03  BYTE "             | |__| |  | | __ |  |    |__/ |__| |    |___ |__/ | ",0
menu04  BYTE "             | |  | |__| |__] |__|    |  \ |  | |___ |___ |  \ | ",0
menu05  BYTE "              _________________________________________________  ",0
menu06  BYTE "                                   Start                         ",0
menu06h BYTE "                                 >>Start<<                       ",0
menu07  BYTE "                                  Records                        ",0
menu07h BYTE "                                >>Records<<                      ",0
menu08  BYTE "                                   Help                          ",0
menu08h BYTE "                                 >>Help<<                        ",0
menu09  BYTE "                                   Exit                          ",0
menu09h BYTE "                                 >>Exit<<                        ",0

;Game Struct
game00 BYTE "                            |          ╔═══╗    |                   |        ###               ",0
game01 BYTE "                            |          ╠═══╣    |                   |       #o###              ",0
game02 BYTE "                            |          ║   ║    |                   |     #####o###            ",0
game03 BYTE "                            |          ╚═══╝    |            ╔═╗    |    #o#\#|#/###           ",0
game04 BYTE "                            |                   |           ╔╩═╩╗   |     ###\|/#o#            ",0
game05 BYTE "                            |                   |           ║   ║   |      # }|{  #            ",0
game06 BYTE "                            |                   |           ╚═══╝   |        }|{               ",0
game07 BYTE "                            |                   |                   |        }|{               ",0
game08 BYTE "                            |                   |                   |                          ",0
game09 BYTE "       ###                  |    @              |                   |                          ",0
game10 BYTE "      #o###                 |   @@@             |                   |                          ",0
game11 BYTE "    #####o###               |   @@              |                   |                          ",0
game12 BYTE "   #o#\#|#/###              |                   |                   |                          ",0
game13 BYTE "    ###\|/#o#               |                   |           ╔═══╗   |      ______________      ",0
game14 BYTE "     # }|{  #               |                   |           ║   ║   |     |Distance:10km |     ",0
game15 BYTE "       }|{                  |                   |           ╠═══╣   |     |Time: 00:00   |     ",0
game16 BYTE "       }|{                  |                   |           ╚═══╝   |     |______________|     ",0

.code
main PROC
Main_Menu:
	call Clrscr
	call Crlf
	mov  edx,OFFSET menu01
    call WriteString
	call Crlf
	mov  edx,OFFSET menu02
    call WriteString
	call Crlf
	mov  edx,OFFSET menu03
    call WriteString
	call Crlf
	mov  edx,OFFSET menu04
    call WriteString
	call Crlf
	mov edx, OFFSET menu05
	call WriteString
	call Crlf
	call Crlf
	call Crlf
	cmp menuctrl, 0
	jne menu1
	mov edx, OFFSET menu06h
	call WriteString
	call Crlf
	mov  edx,OFFSET menu07
    call WriteString
	call Crlf
	mov  edx,OFFSET menu08
    call WriteString
	call Crlf
	mov  edx,OFFSET menu09
    call WriteString
Menu1:
	cmp menuctrl, 1
	jne menu2
	mov edx, OFFSET menu06
	call WriteString
	call Crlf
	mov  edx,OFFSET menu07h
    call WriteString
	call Crlf
	mov  edx,OFFSET menu08
    call WriteString
	call Crlf
	mov  edx,OFFSET menu09
    call WriteString
Menu2:
	cmp menuctrl, 2
	jne menu3
	mov edx, OFFSET menu06
	call WriteString
	call Crlf
	mov  edx,OFFSET menu07
    call WriteString
	call Crlf
	mov  edx,OFFSET menu08h
    call WriteString
	call Crlf
	mov  edx,OFFSET menu09
    call WriteString
Menu3:
	cmp menuctrl, 3
	jne LookForKey
	mov edx, OFFSET menu06
	call WriteString
	call Crlf
	mov  edx,OFFSET menu07
    call WriteString
	call Crlf
	mov  edx,OFFSET menu08
    call WriteString
	call Crlf
	mov  edx,OFFSET menu09h
    call WriteString
	
LookForKey:
	mov eax, 50
	call Delay
	call ReadKey
	jz LookForKey
	cmp dx, VK_ESCAPE
	je finish
	cmp al, 77
	jne elsecmp
	add menuctrl, 1
	jmp exitcmp
elsecmp:
	cmp al, 73
	jne exitcmp
	add menuctrl, -1
exitcmp:
	jmp Main_Menu
	
	
Finish:
	exit
main ENDP
END main