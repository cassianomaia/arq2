Include ..\Irvine32.inc

.const
player0 DB "╔═══╗",0
player1 DB "║ H ║",0
player2 DB "╠═══╣",0
player3 DB "╚═══╝",0

car1 DB "╔═══╗",0
car1 DB "║   ║",0
car1 DB "╠═══╣",0
car1 DB "╚═══╝",0

car1r DB "╔═══╗",0
car1r DB "╠═══╣",0
car1r DB "║   ║",0
car1r DB "╚═══╝",0

car2 DB " ╔═╗ ",0
car2 DB "╔╩═╩╗",0
car2 DB "║   ║",0
car2 DB "╚═══╝",0

car2r DB "╔═══╗",0
car2r DB "║   ║",0
car2r DB "╚╦═╦╝",0
car2r DB " ╚═╝ ",0

oil DB " @  ",0
oil DB "@@@@",0
oil DB "@@@ ",0
oil DB " @  ",0

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
game000 BYTE "                    ###     ",0
game001 BYTE "                   #o###    ",0
game002 BYTE "                 #####o###  ",0
game003 BYTE "                #o#\#|#/### ",0
game004 BYTE "                 ###\|/#o#  ",0
game005 BYTE "                  # }|{  #  ",0
game006 BYTE "                    }|{     ",0
game007 BYTE "                    }|{     ",0
game008 BYTE "                            ",0
game009 BYTE "                            ",0
game010 BYTE "                            ",0
game011 BYTE "             ###            ",0
game012 BYTE "            #o###           ",0
game013 BYTE "          #####o###         ",0
game014 BYTE "         #o#\#|#/###        ",0
game015 BYTE "          ###\|/#o#         ",0
game016 BYTE "           # }|{  #         ",0
game017 BYTE "             }|{            ",0
game018 BYTE "             }|{            ",0
game019 BYTE "                            ",0
game020 BYTE "                            ",0
game021 BYTE "                            ",0
game022 BYTE "                            ",0
game023 BYTE "                            ",0
game024 BYTE "       ###                  ",0
game025 BYTE "      #o###                 ",0
game026 BYTE "    #####o###               ",0
game027 BYTE "   #o#\#|#/###              ",0
game028 BYTE "    ###\|/#o#               ",0
game029 BYTE "     # }|{  #               ",0
game030 BYTE "       }|{                  ",0
game031 BYTE "       }|{                  ",0

game100 BYTE "|          ╔═══╗    |                   |",0
game101 BYTE "|          ╠═══╣    |                   |",0
game102 BYTE "|          ║   ║    |                   |",0
game103 BYTE "|          ╚═══╝    |                   |",0
game104 BYTE "|                   |            ╔═╗    |",0
game105 BYTE "|                   |           ╔╩═╩╗   |",0
game106 BYTE "|                   |           ║   ║   |",0
game107 BYTE "|                   |           ╚═══╝   |",0
game108 BYTE "|                   |                   |",0
game109 BYTE "|    @              |                   |",0
game110 BYTE "|   @@@@            |                   |",0
game111 BYTE "|   @@@             |                   |",0
game112 BYTE "|    @              |                   |",0
game113 BYTE "|                   |                   |",0
game114 BYTE "|                   |                   |",0
game115 BYTE "|                   |                   |",0
game116 BYTE "|                   |                   |",0
game117 BYTE "|                   |                   |",0
game118 BYTE "|                   |                   |",0
game119 BYTE "|                   |                   |",0
game120 BYTE "|                   |                   |",0
game121 BYTE "|                   |                   |",0
game122 BYTE "|                   |                   |",0
game123 BYTE "|                   |                   |",0
game124 BYTE "|                   |                   |",0
game125 BYTE "|                   |                   |",0
game126 BYTE "|                   |                   |",0
game127 BYTE "|                   |                   |",0
game128 BYTE "|                   |           ╔═══╗   |",0
game129 BYTE "|                   |           ║ H ║   |",0
game130 BYTE "|                   |           ╠═══╣   |",0
game131 BYTE "|                   |           ╚═══╝   |",0

game200 BYTE "        ###               ",0
game201 BYTE "       #o###              ",0
game202 BYTE "     #####o###            ",0
game203 BYTE "    #o#\#|#/###           ",0
game204 BYTE "     ###\|/#o#            ",0
game205 BYTE "      # }|{  #            ",0
game206 BYTE "        }|{               ",0
game207 BYTE "        }|{               ",0
game208 BYTE "                          ",0
game209 BYTE "                          ",0
game210 BYTE "                          ",0
game211 BYTE "                  ###     ",0
game212 BYTE "                 #o###    ",0
game213 BYTE "               #####o###  ",0
game214 BYTE "              #o#\#|#/### ",0
game215 BYTE "               ###\|/#o#  ",0
game216 BYTE "                # }|{  #  ",0
game217 BYTE "                  }|{     ",0
game218 BYTE "                  }|{     ",0
game219 BYTE "                          ",0
game220 BYTE "        ###               ",0
game221 BYTE "       #o###              ",0
game222 BYTE "     #####o###            ",0
game223 BYTE "    #o#\#|#/###           ",0
game224 BYTE "     ###\|/#o#            ",0
game225 BYTE "      # }|{  #            ",0
game226 BYTE "        }|{               ",0
game227 BYTE "        }|{               ",0
game228 BYTE "      ______________      ",0
game229 BYTE "     |Distance:10km |     ",0
game230 BYTE "     |Time: 00:00   |     ",0
game231 BYTE "     |______________|     ",0

.code
main PROC

;Estrutura do menu principal
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
	jz exitcmp
	cmp dx, VK_ESCAPE
	je finish
	cmp al, 119
	jne elsecmp
	cmp menuctrl, 0
	je  exitcmp
	add menuctrl, -1
	jmp exitcmp
elsecmp:
	cmp al, 115
	jne exitcmp
	cmp menuctrl , 3
	je exitcmp
	add menuctrl, 1
exitcmp:
	mov eax, 50
	call Delay
	jmp Main_Menu
;Fim da estrutura do menu principal
	
Finish:
	exit
main ENDP
END main