Include ..\Irvine32.inc
IncludeLib winmm.lib
.data
;Menu struct and vars
menuctrl BYTE 0

menu01  BYTE "              _________________________________________________  ",0
menu02  BYTE "             | _  _ _  _ ____ ____    ____ ____ ____ ____ ____ | ",0
menu03  BYTE "             | |__| |  | | __ |  |    |__/ |__| |    |___ |__/ | ",0
menu04  BYTE "             | |  | |__| |__] |__|    |  \ |  | |___ |___ |  \ | ",0
menu05  BYTE "              _________________________________________________  ",0
menu06  BYTE "                                   Start                         ",0
menu06h BYTE "                                 >>Start<<                       ",0
menu07  BYTE "                                   Help                          ",0
menu07h BYTE "                                 >>Help<<                        ",0
menu08  BYTE "                                   Exit                          ",0
menu08h BYTE "                                 >>Exit<<                        ",0
menu09  BYTE "                   Alunos: Alisson Hayasi                        ",0
menu10  BYTE "                           Cassiano Maia                         ",0
menu11  BYTE "                           Hugo Braga                            ",0
menu12  BYTE "                    Prof.: Luciano Neris                         ",0
menu13  BYTE "               Disciplina: Lab. de Arq. e Org. de Computadores 2 ",0

;Help struct and vars
helpindex BYTE 0

help00  BYTE "                                                                 ",0
help01  BYTE "                                                                 ",0
help02  BYTE "                                                                 ",0
help03  BYTE "                                                                 ",0
help04  BYTE "                                                                 ",0
help05  BYTE "                                    Jogar                        ",0
help05h BYTE "                                  >>Jogar<<                      ",0
help06  BYTE "                               Voltar ao menu                    ",0
help06h BYTE "                             >>Voltar ao menu<<                  ",0

;Lost screen struct
lost00  BYTE "                        Voce colidiu com um carro :(             ",0
lost01  BYTE "                              Pontuacao:",0
lost02  BYTE "                         Nivel Atingido:",0
lost03  BYTE "                    Pressione enter para voltar ao menu.         ",0


;Game Struct and vars
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

carcontrol BYTE 0            ;controla a posição do carrinho na tela
random_number DWORD 0        ;gera um numero randomico para onde vamos colocar o prox obstaculo
obstaculo_index DWORD 0      ;indexa qual posição o obstaculo vai ficar
obstaculo_counter DWORD 0    ;conta se já colocaram tres obstaculos na tela
timer_obst DWORD 0           ;timer para contar 300ms(Periodo entre cada novo obstaculo)
score DWORD 0				 ;salva a quantidade de pontos do player
level DWORD 1				 ;salva o nivel em que o jogador está
level_counter DWORD 0		 ;utilizado para contar quantos pontos fez em determinado lvl
level_timer DWORD 0			 ;utilizado para definir o delay do level

;esse grupo de strings nunca é mostrado, é utilizado somente para desenhar o proximo obstaculo a entrar no jogo
game0 BYTE "|                   |                   |",0
game1 BYTE "|                   |                   |",0
game2 BYTE "|                   |                   |",0
game3 BYTE "|                   |                   |",0

;strings onde o jogo realmente acontece
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
game230 BYTE "                          ",0
game231 BYTE "      Level:",0					;exibi o level na tela
game232 BYTE "      Score:",0					;exibi o score na tela
game233 BYTE "                          ",0

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
	cmp dx, VK_RETURN ;verifica se o jogador pressionou enter, se sim
	jne nextcmp		  ;leva para a opção indicada (selecionada via menuctrl,
	cmp menuctrl, 0	  ;que é a variavel para controlar o menu)
	je gameloop_start
	cmp menuctrl, 1
	je helploop
	cmp menuctrl, 2
	je finish
;instruções para incrementar ou decrementar a variavel de controle do menu
nextcmp:
	cmp al, 119     ;compara se pressionou w
	jne elsecmp		;se não, pula para a proxima comparação
	cmp menuctrl, 0 ;decrementa somente se nao for zero
	je  exitcmp
	add menuctrl, -1 
	jmp exitcmp
elsecmp:
	cmp al, 115     ;compara se pressionou s
	jne exitcmp		;se não, pula para o fim, chamando um delay e reiniciando o loop
	cmp menuctrl, 2 ;incrementa somente se não for 2
	je exitcmp
	add menuctrl, 1
exitcmp:
	mov eax, 50
	call Delay
	jmp Main_Menu
;Fim da estrutura do menu principal
	
;Inicio do gameloop
gameloop_start:
	;setando as variaveis para começar o jogo
	call Clrscr
	mov score, 0
	mov level, 1
	mov level_counter, 0
	mov level_timer, 250
	;loop principal do jogo
gameloop_inner:
	call draw_player
	mov eax, 50
	call Delay
	call ReadKey
	jz exitcmp_g
	cmp dx, VK_ESCAPE
	je finish
						;comparações para movimentação do player
	cmp al, 97			;se apertou a, move para a esquerda
	jne elsecmp_g
	cmp carcontrol, 0	;checa se nao está na borda esquerda
	je  exitcmp_g
	add carcontrol, -1	;decrementa a posicao se nao estiver na borda esquerda
	jmp exitcmp_g
elsecmp_g:
	cmp al, 100			;se apertou s, move para a direita
	jne exitcmp_g
	cmp carcontrol , 3  ;checa se não está na borda direita
	je exitcmp_g
	add carcontrol, 1	;incrementa a posicao se nao estiver na borda direita
exitcmp_g:
	mov eax, level_timer
	cmp timer_obst, eax ;timer_obst conta o tempo até ser igual a level_timer,
	jne exit_timer		;e quando igual, permite que novos obstaculos surjam no jogo
	call draw_obst
	call draw_copy
	add score, 1
	add level_counter, 1
	cmp level_counter, 50 ;se o jogador atingir 50 pontos em um level, vai para o proximo level,
	jne finish_counter	  ;deixando o jogo 50ms mais rapido
	cmp level_timer, 100
	je finish_counter
	add level, 1		  ;incrementa o indice para subir de nivel
	mov level_counter, 0  ;zera o contador de pontos no nivel
	sub level_timer, 50   ;subtrai 50 do delay de entrada dos obstaculos
finish_counter:
	mov timer_obst, 0
exit_timer:
	call draw_game  ;função para desenhar a tela do jogo
; checagem da colisão nas 4 posições possiveis
	mov ecx, OFFSET game130
	mov eax, OFFSET game128
	add ecx, 5
	add eax, 5
	mov dl, BYTE PTR [ecx]
	mov bl, BYTE PTR [eax]
	cmp dl, 205
	jne colision2
	cmp bl, 205
	je lost_screen
colision2:
	add ecx, 9
	add eax, 9
	mov dl, BYTE PTR [ecx]
	mov bl, BYTE PTR [eax]
	cmp dl, 205
	jne colision3
	cmp bl, 205
	je lost_screen
colision3:
	add ecx, 11
	add eax, 11
	mov dl, BYTE PTR [ecx]
	mov bl, BYTE PTR [eax]
	cmp dl, 205
	jne colision4
	cmp bl, 205
	je lost_screen
colision4:
	add ecx, 9
	add eax, 9
	mov dl, BYTE PTR [ecx]
	mov bl, BYTE PTR [eax]
	cmp dl, 205
	jne end_colision
	cmp bl, 205
	je lost_screen
end_colision:
	mov eax, 50
	call Delay 
	add timer_obst, 50 ;adciona 50ms a contagem para o proximo obstaculo
	jmp gameloop_inner ;retorna ao começo do loop
;fim do gameloop

;loop para a tela help
helploop:
	call draw_help
	mov eax, 50
	call Delay
	call ReadKey
	jz helploop
	cmp dx, VK_RETURN
	jne second_cmp
	cmp helpindex, 0
	je gameloop_start
	cmp helpindex, 1
	je Main_Menu
second_cmp:
	cmp al, 119
	jne third_cmp
	cmp helpindex, 0
	je  helploop
	add helpindex, -1
	jmp helploop
third_cmp:
	cmp al, 115
	jne helploop
	cmp helpindex , 1
	je helploop
	add helpindex, 1
	je helploop
	jmp helploop
;fim do loop de help

;tela que informa que o jogador perdeu
lost_screen:
	call clear_game	;limpa a matriz do jogo, para que caso o jogador jogue de novo tudo esteja certo
	mov eax, 50
	call Delay
	call draw_lost
	mov eax, 50
	call Delay
	call ReadKey
	jz lost_screen
	cmp dx, VK_RETURN ;se apertar enter retorna ao menu principal
	je Main_Menu
	jmp lost_screen
;fim da tela de perdeu

;ponto de saida do programa
Finish:
	exit
main ENDP

;função que imprime no console o menu principal do jogo
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
Menu2:
	cmp menuctrl, 2
	jne exit_draw_menu
	mov edx, OFFSET menu06
	call WriteString
	call Crlf
	mov  edx,OFFSET menu07
    call WriteString
	call Crlf
	mov  edx,OFFSET menu08h
    call WriteString
	call Crlf
exit_draw_menu:
	call Crlf
	call Crlf
	call Crlf
	Call Crlf
	mov  edx,OFFSET menu09
    call WriteString
	call Crlf
	mov  edx,OFFSET menu10
    call WriteString
	call Crlf
	mov  edx,OFFSET menu11
    call WriteString
	call Crlf
	mov  edx,OFFSET menu12
    call WriteString
	call Crlf
	mov  edx,OFFSET menu13
    call WriteString
	call Crlf
	ret
draw_menu ENDP

;função que imprime no console a tela de ajuda do jogo
draw_help PROC
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
	mov edx, OFFSET help00
	call WriteString
	call Crlf
	mov  edx,OFFSET help01
    call WriteString
	call Crlf
	mov  edx,OFFSET help02
    call WriteString
	call Crlf
	mov  edx,OFFSET help03
    call WriteString
	call Crlf
	mov  edx,OFFSET help04
    call WriteString
	call Crlf
	cmp helpindex, 0
	jne helpmenu2
	mov  edx,OFFSET help05h
    call WriteString
	call Crlf
	mov  edx,OFFSET help06
    call WriteString
	ret
helpmenu2:
	mov  edx,OFFSET help05
    call WriteString
	call Crlf
	mov  edx,OFFSET help06h
    call WriteString
	ret
draw_help ENDP

;função que remove todos os obstaculos das pistas
clear_game PROC
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
	call draw_copy
	ret
clear_game ENDP

;função que desenha o carrinho do jogador, na posição marcada pela variavel carcontrol
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

;função que desenha um obstaculo em uma posição aleatoria das quatro pistas possiveis
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
	ret
return_draw:
	mov obstaculo_counter, 0
	ret
	
draw_obst ENDP

;função que realiza a movimentação dos obstaculos, copiando o obstaculo da linha de cima para 
;a linha debaixo, caso esteja na ultima posicao, o obstaculo irá desaparecer. O primeiro obstaculo
;é copiado de uma linha que não é impressa no console(strings game0, game1, game2 e game3)
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

;função que imprime todo o jogo na tela
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
	mov eax, level
	call WriteDec
	call Crlf
	mov  edx,OFFSET game032
    call WriteString
	mov  edx,OFFSET game132
    call WriteString
	mov  edx,OFFSET game232
    call WriteString
	mov eax, score
	call WriteDec
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

;função que imprime no console a tela de perdeu
draw_lost PROC
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
	mov  edx,OFFSET lost00
    call WriteString
	call Crlf
	mov  edx,OFFSET lost01
    call WriteString
	mov eax, score
	call WriteDec
	call Crlf
	mov  edx,OFFSET lost02
    call WriteString
	mov eax, level
	call WriteDec
	call Crlf
	mov  edx,OFFSET lost03
    call WriteString
	call Crlf
	ret
draw_lost ENDP

END main

