Include ..\Irvine32.inc

.const
;operator consts
posix_0 DB 5
posix_1 DB 14
posix_2 DB 25
posix_3 DB 34

;graphical consts
player0 DB "╔═══╗",0
player1 DB "║ H ║",0
player2 DB "╠═══╣",0
player3 DB "╚═══╝",0

car00 DB    "╔═══╗",0
car01 DB    "║   ║",0
car02 DB    "╠═══╣",0
car03 DB    "╚═══╝",0

car00r DB   "╔═══╗",0
car01r DB   "╠═══╣",0
car02r DB   "║   ║",0
car03r DB   "╚═══╝",0

car10 DB    " ╔═╗ ",0
car11 DB    "╔╩═╩╗",0
car12 DB    "║   ║",0
car13 DB    "╚═══╝",0

car10r DB   "╔═══╗",0
car11r DB   "║   ║",0
car12r DB   "╚╦═╦╝",0
car13r DB   " ╚═╝ ",0

oil0 DB     " @@  ",0
oil1 DB     "@@@@@",0
oil2 DB     " @@@@",0
oil3 DB     " @@  ",0

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
game024 BYTE "                            ",0
game025 BYTE "                            ",0
game026 BYTE "       ###                  ",0
game027 BYTE "      #o###                 ",0
game028 BYTE "    #####o###               ",0
game029 BYTE "   #o#\#|#/###              ",0
game030 BYTE "    ###\|/#o#               ",0
game031 BYTE "     # }|{  #               ",0
game032 BYTE "       }|{                  ",0
game033 BYTE "       }|{                  ",0

carcontrol BYTE 0
obstaculos DWORD 1
random_number DWORD 0
obstaculo_index DWORD 0
obstaculo_counter DWORD 0

game0 BYTE "|                   |                   |",0
game1 BYTE "|                   |                   |",0
game2 BYTE "|                   |                   |",0
game3 BYTE "|                   |                   |",0

game100 BYTE "|                   |                   |",0
game101 BYTE "|                   |                   |",0
game102 BYTE "|                   |                   |",0
game103 BYTE "|                   |                   |",0
game104 BYTE "|                   |                   |",0
game105 BYTE "|                   |                   |",0
game106 BYTE "|                   |                   |",0
game107 BYTE "|                   |                   |",0
game108 BYTE "|                   |                   |",0
game109 BYTE "|                   |                   |",0
game110 BYTE "|                   |                   |",0
game111 BYTE "|                   |                   |",0
game112 BYTE "|                   |                   |",0
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
game128 BYTE "|                   |                   |",0
game129 BYTE "|                   |                   |",0
game130 BYTE "|                   |                   |",0
game131 BYTE "|                   |                   |",0
game132 BYTE "|                   |                   |",0
game133 BYTE "|                   |                   |",0

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
game228 BYTE "                          ",0
game229 BYTE "                          ",0
game230 BYTE "      ______________      ",0
game231 BYTE "     |Distance:00km |     ",0
game232 BYTE "     |Time:   00:00 |     ",0
game233 BYTE "     |______________|     ",0

.code
main PROC

;Estrutura do menu principal
Main_Menu:
	call draw_menu
;instruções para movimento do menu
	mov eax, 50
	call Delay
	call ReadKey
	jz exitcmp
	cmp dx, VK_ESCAPE
	je finish
	cmp dx, VK_RETURN
	jne nextcmp
	cmp menuctrl, 0
	je gameloop
	cmp menuctrl, 3
	je finish
nextcmp:
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
	
;Inicio do gameloop
gameloop:
	call Clrscr
gameloop_inner:
	call draw_player
	mov eax, 50
	call Delay
	call ReadKey
	jz exitcmp_g
	cmp dx, VK_ESCAPE
	je finish
nextcmp_g:
	cmp al, 97
	jne elsecmp_g
	cmp carcontrol, 0
	je  exitcmp_g
	add carcontrol, -1
	jmp exitcmp_g
elsecmp_g:
	cmp al, 100
	jne exitcmp_g
	cmp carcontrol , 3
	je exitcmp_g
	add carcontrol, 1
exitcmp_g:
	call draw_obst
	call draw_copy
	call draw_game
	mov eax, 500
	call Delay
	jmp gameloop_inner
	;limpando a matriz da rua e colocando o carrinho na posição
	
Finish:
	exit
main ENDP

draw_menu PROC
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
	jne exit_draw_menu
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
exit_draw_menu:
	ret
draw_menu ENDP

draw_player PROC
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game130
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game131
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game132
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game133
	rep movsb
	
	mov ecx, OFFSET game130
	cmp carcontrol, 0
	jne pos1
	mov ebx, 205
	add ecx, 5
	mov BYTE PTR [ecx], bl
	mov ebx, 201
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 187
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game131
	mov ebx, 72
	add ecx, 5
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game132
	mov ebx, 205
	add ecx, 5
	mov BYTE PTR [ecx], bl
	mov ebx, 204
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 185
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game133
	mov ebx, 205
	add ecx, 5
	mov BYTE PTR [ecx], bl
	mov ebx, 200
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 188
	add ecx, 2
	mov BYTE PTR [ecx], bl
	
pos1:
	cmp carcontrol, 1
	jne pos2
	mov ecx, OFFSET game130
	mov ebx, 205
	add ecx, 14
	mov BYTE PTR [ecx], bl
	mov ebx, 201
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 187
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game131
	mov ebx, 72
	add ecx, 14
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game132
	mov ebx, 205
	add ecx, 14
	mov BYTE PTR [ecx], bl
	mov ebx, 204
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 185
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game133
	mov ebx, 205
	add ecx, 14
	mov BYTE PTR [ecx], bl
	mov ebx, 200
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 188
	add ecx, 2
	mov BYTE PTR [ecx], bl
	
pos2:
	cmp carcontrol, 2
	jne pos3
	mov ebx, 205
	add ecx, 25
	mov BYTE PTR [ecx], bl
	mov ebx, 201
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 187
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game131
	mov ebx, 72
	add ecx, 25
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game132
	mov ebx, 205
	add ecx, 25
	mov BYTE PTR [ecx], bl
	mov ebx, 204
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 185
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game133
	mov ebx, 205
	add ecx, 25
	mov BYTE PTR [ecx], bl
	mov ebx, 200
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 188
	add ecx, 2
	mov BYTE PTR [ecx], bl
pos3:
	cmp carcontrol, 3
	jne end_draw
	mov ebx, 205
	add ecx, 34
	mov BYTE PTR [ecx], bl
	mov ebx, 201
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 187
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game131
	mov ebx, 72
	add ecx, 34
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game132
	mov ebx, 205
	add ecx, 34
	mov BYTE PTR [ecx], bl
	mov ebx, 204
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 185
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game133
	mov ebx, 205
	add ecx, 34
	mov BYTE PTR [ecx], bl
	mov ebx, 200
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 188
	add ecx, 2
	mov BYTE PTR [ecx], bl
end_draw:
	ret
draw_player ENDP

draw_obst PROC
	add obstaculo_counter, 1
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game0
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game1
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game2
	rep movsb
	cld
	mov ecx, LENGTHOF game104
	mov esi, OFFSET game104
	mov edi, OFFSET game3
	rep movsb
	
	cmp obstaculo_counter, 4
	je return_draw
	mov eax, obstaculos
	cmp eax, 1
	jne obstaculo2
	;inc eax
	;mov obstaculos, eax
	call Randomize
	mov  eax,4     		;get random 0 to 99
    call RandomRange 		;
    inc  eax         		;make range 1 to 100
    mov  random_number,eax  ;save random number
	cmp random_number, 1
	jne posicao2
	mov obstaculo_index, 5
	jmp draw_final
posicao2:
	cmp random_number, 2
	jne posicao3
	mov obstaculo_index, 14
	jmp draw_final
	
posicao3:
	cmp random_number, 3
	jne posicao4
	mov obstaculo_index, 25
	jmp draw_final
	
posicao4:
	mov obstaculo_index, 34
	jmp draw_final
draw_final:
	mov ecx, OFFSET game0
	mov ebx, 205
	add ecx, obstaculo_index
	mov BYTE PTR [ecx], bl
	mov ebx, 201
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 187
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game1
	mov ebx, 205
	add ecx, obstaculo_index
	mov BYTE PTR [ecx], bl
	mov ebx, 204
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 185
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game2
	add ecx, obstaculo_index
	mov ebx, 186
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 186
	add ecx, 2
	mov BYTE PTR [ecx], bl
	mov ecx, OFFSET game3
	mov ebx, 205
	add ecx, obstaculo_index
	mov BYTE PTR [ecx], bl
	mov ebx, 200
	add ecx, -1
	mov BYTE PTR [ecx], bl
	mov ebx, 188
	add ecx, 2
	mov BYTE PTR [ecx], bl
	
obstaculo2:
	ret
return_draw:
	mov obstaculo_counter, 0
	ret
	
draw_obst ENDP

draw_copy PROC
	cld
	mov ecx, LENGTHOF game120
	mov esi, OFFSET game120
	mov edi, OFFSET game125
	rep movsb
	cld
	mov ecx, LENGTHOF game121
	mov esi, OFFSET game121
	mov edi, OFFSET game126
	rep movsb
	cld
	mov ecx, LENGTHOF game122
	mov esi, OFFSET game122
	mov edi, OFFSET game127
	rep movsb
	cld
	mov ecx, LENGTHOF game123
	mov esi, OFFSET game123
	mov edi, OFFSET game128
	rep movsb
	
	cld
	mov ecx, LENGTHOF game115
	mov esi, OFFSET game115
	mov edi, OFFSET game120
	rep movsb
	cld
	mov ecx, LENGTHOF game116
	mov esi, OFFSET game116
	mov edi, OFFSET game121
	rep movsb
	cld
	mov ecx, LENGTHOF game117
	mov esi, OFFSET game117
	mov edi, OFFSET game122
	rep movsb
	cld
	mov ecx, LENGTHOF game118
	mov esi, OFFSET game118
	mov edi, OFFSET game123
	rep movsb
	
	cld
	mov ecx, LENGTHOF game110
	mov esi, OFFSET game110
	mov edi, OFFSET game115
	rep movsb
	cld
	mov ecx, LENGTHOF game111
	mov esi, OFFSET game111
	mov edi, OFFSET game116
	rep movsb
	cld
	mov ecx, LENGTHOF game112
	mov esi, OFFSET game112
	mov edi, OFFSET game117
	rep movsb
	cld
	mov ecx, LENGTHOF game113
	mov esi, OFFSET game113
	mov edi, OFFSET game118
	rep movsb
	
	cld
	mov ecx, LENGTHOF game105
	mov esi, OFFSET game105
	mov edi, OFFSET game110
	rep movsb
	cld
	mov ecx, LENGTHOF game106
	mov esi, OFFSET game106
	mov edi, OFFSET game111
	rep movsb
	cld
	mov ecx, LENGTHOF game107
	mov esi, OFFSET game107
	mov edi, OFFSET game112
	rep movsb
	cld
	mov ecx, LENGTHOF game108
	mov esi, OFFSET game108
	mov edi, OFFSET game113
	rep movsb
	
	cld
	mov ecx, LENGTHOF game100
	mov esi, OFFSET game100
	mov edi, OFFSET game105
	rep movsb
	cld
	mov ecx, LENGTHOF game101
	mov esi, OFFSET game101
	mov edi, OFFSET game106
	rep movsb
	cld
	mov ecx, LENGTHOF game102
	mov esi, OFFSET game102
	mov edi, OFFSET game107
	rep movsb
	cld
	mov ecx, LENGTHOF game103
	mov esi, OFFSET game103
	mov edi, OFFSET game108
	rep movsb
	
	cld
	mov ecx, LENGTHOF game0
	mov esi, OFFSET game0
	mov edi, OFFSET game100
	rep movsb
	cld
	mov ecx, LENGTHOF game1
	mov esi, OFFSET game1
	mov edi, OFFSET game101
	rep movsb
	cld
	mov ecx, LENGTHOF game2
	mov esi, OFFSET game2
	mov edi, OFFSET game102
	rep movsb
	cld
	mov ecx, LENGTHOF game3
	mov esi, OFFSET game3
	mov edi, OFFSET game103
	rep movsb
	

	ret
draw_copy ENDP
draw_game PROC
	xor ecx, ecx
	call Clrscr
	call Crlf
	mov  edx,OFFSET game000
    call WriteString
	mov  edx,OFFSET game100
    call WriteString
	mov  edx,OFFSET game200
    call WriteString
	call Crlf
	mov  edx,OFFSET game001
    call WriteString
	mov  edx,OFFSET game101
    call WriteString
	mov  edx,OFFSET game201
    call WriteString
	call Crlf
	mov  edx,OFFSET game002
    call WriteString
	mov  edx,OFFSET game102
    call WriteString
	mov  edx,OFFSET game202
    call WriteString
	call Crlf
	mov  edx,OFFSET game003
    call WriteString
	mov  edx,OFFSET game103
    call WriteString
	mov  edx,OFFSET game203
    call WriteString
	call Crlf
	mov  edx,OFFSET game004
    call WriteString
	mov edx, OFFSET game104
	call WriteString
	mov  edx,OFFSET game204
    call WriteString
	call Crlf
	mov  edx,OFFSET game005
    call WriteString
	mov  edx,OFFSET game105
    call WriteString
	mov  edx,OFFSET game205
    call WriteString
	call Crlf
	mov  edx,OFFSET game006
    call WriteString
	mov  edx,OFFSET game106
    call WriteString
	mov  edx,OFFSET game206
    call WriteString
	call Crlf
	mov  edx,OFFSET game007
    call WriteString
	mov  edx,OFFSET game107
    call WriteString
	mov  edx,OFFSET game207
    call WriteString
	call Crlf
	mov  edx,OFFSET game008
    call WriteString
	mov  edx,OFFSET game108
    call WriteString
	mov  edx,OFFSET game208
    call WriteString
	call Crlf
	mov  edx,OFFSET game009
    call WriteString
	mov edx, OFFSET game109
	call WriteString
	mov  edx,OFFSET game209
    call WriteString
	call Crlf
	mov  edx,OFFSET game010
    call WriteString
	mov  edx,OFFSET game110
    call WriteString
	mov  edx,OFFSET game210	
    call WriteString
	call Crlf
	mov  edx,OFFSET game011
    call WriteString
	mov  edx,OFFSET game111
    call WriteString
	mov  edx,OFFSET game211
    call WriteString
	call Crlf
	mov  edx,OFFSET game012
    call WriteString
	mov  edx,OFFSET game112
    call WriteString
	mov  edx,OFFSET game212
    call WriteString
	call Crlf
	mov  edx,OFFSET game013
    call WriteString
	mov  edx,OFFSET game113
    call WriteString
	mov  edx,OFFSET game213
    call WriteString
	call Crlf
	mov  edx,OFFSET game014
    call WriteString
	mov edx, OFFSET game114
	call WriteString
	mov  edx,OFFSET game214
    call WriteString
	call Crlf
	mov  edx,OFFSET game015
    call WriteString
	mov  edx,OFFSET game115
    call WriteString
	mov  edx,OFFSET game215
    call WriteString
	call Crlf
	mov  edx,OFFSET game016
    call WriteString
	mov  edx,OFFSET game116
    call WriteString
	mov  edx,OFFSET game216
    call WriteString
	call Crlf
	mov  edx,OFFSET game017
    call WriteString
	mov  edx,OFFSET game117
    call WriteString
	mov  edx,OFFSET game217
    call WriteString
	call Crlf
	mov  edx,OFFSET game018
    call WriteString
	mov  edx,OFFSET game118
    call WriteString
	mov  edx,OFFSET game218
    call WriteString
	call Crlf
	mov  edx,OFFSET game019
    call WriteString
	mov edx, OFFSET game119
	call WriteString
	mov  edx,OFFSET game219
    call WriteString
	call Crlf
	mov  edx,OFFSET game020
    call WriteString
	mov  edx,OFFSET game120
    call WriteString
	mov  edx,OFFSET game220
    call WriteString
	call Crlf
	mov  edx,OFFSET game021
    call WriteString
	mov  edx,OFFSET game121
    call WriteString
	mov  edx,OFFSET game221
    call WriteString
	call Crlf
	mov  edx,OFFSET game022
    call WriteString
	mov  edx,OFFSET game122
    call WriteString
	mov  edx,OFFSET game222
    call WriteString
	call Crlf
	mov  edx,OFFSET game023
    call WriteString
	mov  edx,OFFSET game123
    call WriteString
	mov  edx,OFFSET game223
    call WriteString
	call Crlf
	mov  edx,OFFSET game024
    call WriteString
	mov edx, OFFSET game124
	call WriteString
	mov  edx,OFFSET game224
    call WriteString
	call Crlf
	mov  edx,OFFSET game025
    call WriteString
	mov  edx,OFFSET game125
    call WriteString
	mov  edx,OFFSET game225
    call WriteString
	call Crlf
	mov  edx,OFFSET game026
    call WriteString
	mov  edx,OFFSET game126
    call WriteString
	mov  edx,OFFSET game226
    call WriteString
	call Crlf
	mov  edx,OFFSET game027
    call WriteString
	mov  edx,OFFSET game127
    call WriteString
	mov  edx,OFFSET game227
    call WriteString
	call Crlf
	mov  edx,OFFSET game028
    call WriteString
	mov  edx,OFFSET game128
    call WriteString
	mov  edx,OFFSET game228
    call WriteString
	call Crlf
	mov  edx,OFFSET game029
    call WriteString
	mov edx, OFFSET game129
	call WriteString
	mov  edx,OFFSET game229
    call WriteString
	call Crlf
	mov  edx,OFFSET game030
    call WriteString
	mov  edx,OFFSET game130
    call WriteString
	mov  edx,OFFSET game230
    call WriteString
	call Crlf
	mov  edx,OFFSET game031
    call WriteString
	mov  edx,OFFSET game131
    call WriteString
	mov  edx,OFFSET game231
    call WriteString
	call Crlf
	mov  edx,OFFSET game032
    call WriteString
	mov  edx,OFFSET game132
    call WriteString
	mov  edx,OFFSET game232
    call WriteString
	call Crlf
	mov  edx,OFFSET game033
    call WriteString
	mov  edx,OFFSET game133
    call WriteString
	mov  edx,OFFSET game233
    call WriteString
	call Crlf
	ret
draw_game ENDP
END main

