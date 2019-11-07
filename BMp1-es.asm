section .data               
;Cambiar Nombre y Apellido por vuestros datos.
developer db "Lucas Werner",0

;Constantes que también están definidas en C.
DimMatrix    equ 10
SizeMatrix   equ 100

section .text            
;Variables definidas en Ensamblador.
global developer     
                         
;Subrutinas de ensamblador que se llaman desde C.
global posCurScreenP1, showMinesP1, updateBoardP1, moveCursorP1
global mineMarkerP1, checkMinesP1, printMessageP1, playP1	 

;Variables globales definidas en C.
extern rowScreen, colScreen, rowMat, colMat, indexMat
extern charac, mines, marks, numMines, state

;Funciones de C que se llaman desde ensamblador
extern gotoxyP1_C, getchP1_C, printchP1_C
extern printBoardP1_C, printMessageP1_C,  	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ATENCIÓN: Recordad que las variables y los Parámetros de tipo 'char',
;;   en ensamblador se tienen que asignar a registros de tipo  
;;   BYTE (1 byte): al, ah, bl, bh, cl, ch, dl, dh, sil, dil, ..., r15b
;;   las de tipo 'int' se tienen que assignar a registres de tipo 
;;   DWORD (4 bytes): eax, ebx, ecx, edx, esi, edi, ...., r15d
;;   las de tipo 'long' se tienen que assignar a registros de tipo 
;;   QWORD (8 bytes): rax, rbx, rcx, rdx, rsi, rdi, ...., r15
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Las subrutinas en ensamblador que tenéis que implementar son:
;;   posCurScreenP1, showMinesP1, updateBoardP1
;;   moveCursorP1, mineMarkerP1, checkMinesP1
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Esta subrutina se da hecha. NO LA PODÉIS MODIFICAR.
; Situar el cursor en una fila indicada por la variable (rowScreen) y en 
; una columna indicada por la variable (colScreen) de pantalla 
; llamando a la función gotoxyP1_C.
; 
; Variables globales utilizadas:	
; rowScreen: fila de la pantalla donde posicionamos el cursor.
; colScreen: columna de la pantalla donde posicionamos el cursor.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
gotoxyP1:
   push rbp
   mov  rbp, rsp
   ;guardamos el estado de los registros del procesador porque
   ;las funciones de C no mantienen el estado de los registros.
   push rax
   push rbx
   push rcx
   push rdx
   push rsi
   push rdi
   push r8
   push r9
   push r10
   push r11
   push r12
   push r13
   push r14
   push r15

   call gotoxyP1_C
 
   pop r15
   pop r14
   pop r13
   pop r12
   pop r11
   pop r10
   pop r9
   pop r8
   pop rdi
   pop rsi
   pop rdx
   pop rcx
   pop rbx
   pop rax

   mov rsp, rbp
   pop rbp
   ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Esta subrutina se da hecha. NO LA PODÉIS MODIFICAR.
; Mostrar un carácter guradado en la variable (charac) en pantalla, en
; la posición donde está el cursor llamando a la función printchP1_C.
; 
; Variables globales utilizadas:	
; charac   : carácter que queremos mostrar.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
printchP1:
   push rbp
   mov  rbp, rsp
   ;guardamos el estado de los registros del procesador porque
   ;las funciones de C no mantienen el estado de los registros.
   push rax
   push rbx
   push rcx
   push rdx
   push rsi
   push rdi
   push r8
   push r9
   push r10
   push r11
   push r12
   push r13
   push r14
   push r15

   call printchP1_C
 
   pop r15
   pop r14
   pop r13
   pop r12
   pop r11
   pop r10
   pop r9
   pop r8
   pop rdi
   pop rsi
   pop rdx
   pop rcx
   pop rbx
   pop rax

   mov rsp, rbp
   pop rbp
   ret
   

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Esta subrutina se da hecha. NO LA PODÉIS MODIFICAR.
; Leer una tecla y guardar el carácter asociado en la variable (charac) 
; sin mostrarlo en pantalla, llamando a la función getchP1_C
; 
; Variables globales utilizadas:	
; charac   : carácter que queremos mostrar.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
getchP1:
   push rbp
   mov  rbp, rsp
   ;guardamos el estado de los registros del procesador porque
   ;las funciones de C no mantienen el estado de los registros.
   push rax
   push rbx
   push rcx
   push rdx
   push rsi
   push rdi
   push r8
   push r9
   push r10
   push r11
   push r12
   push r13
   push r14
   push r15

   call getchP1_C
 
   pop r15
   pop r14
   pop r13
   pop r12
   pop r11
   pop r10
   pop r9
   pop r8
   pop rdi
   pop rsi
   pop rdx
   pop rcx
   pop rbx
   pop rax
   
   mov rsp, rbp
   pop rbp
   ret 
   

;;;;;
; Posicionar el cursor en pantalla dentro del tablero, en función del 
; índice de la matriz (indexMat), posición del cursor dentro del tablero.
; Para calcular la posición del cursor en pantalla utilizar 
; estas fórmulas:
; rowScreen=((indexMat/10)*2)+7
; colScreen=((indexMat%10)*4)+7
; Para posicionar el cursor se llama a la subrutina gotoxyP1
;
; Variables globales utilizadas:	
; indexMat : Índice para acceder a las matrices mines y marks desde ensamblador.
; rowScreen: Fila de la pantalla donde posicionamos el cursor.
; colScreen: Columna de la pantalla donde posicionamos el cursor.
;;;;;  
posCurScreenP1:
	push rbp
	mov  rbp, rsp
	

    push r8
    push r9
	
	mov r8, 7
	mov r9, 10


	mov ax, [indexMat]
	mov bl,10
	div bl
	
	;el resultado se guarda en "al" y el resto en "ah" 
	mov [rowScreen], al ;rowScreen = (indexMat/10)
	mov [colScreen], ah ;colScreen = (indexMat%10)
	
	
	mov bl,2
	mul bl
    mov [rowScreen], ax ;rowScreen = (indexMat/10)*2
	add [rowScreen], r8 ; rowScreen = (indexMat/10)*2 +7
	
	
	mov al, [colScreen]
	mov bl, 4
	mul bl
	mov [colScreen], ax
	add [colScreen], r9
	; llamamos a gotoxyP1
	call gotoxyP1
	
	pop r9
	pop r8
	

	mov rsp, rbp
	pop rbp
	ret


;;;;;
; Convierte el valor del Número de minas que quedan por marcar (numMines)
; (entre 0 y 99) a dos caracteres ASCII. 
; Se tiene que dividir el valor (numMines) entre 10, el cociente 
; representará las decenas y el residuo las unidades, y después se
; tienen que convertir a ASCII sumando 48, carácter '0'.
; Mostrar los dígitos (carácter ASCII) de les decenas en la fila 27, 
; columna 24 de la pantalla y las unidades en la fila 27, columna 26.
; (la posición se indica através de las variables rowScreen y colScreen).
; Para posicionar el cursor se llama a la subrutina gotoxyP1 y para 
; mostrar los caracteres a la subrutina printchP1.
;
; Variables globales utilizadas:	
; rowScreen: Fila de la pantalla donde posicionamos el cursor.
; colScreen: Columna de la pantalla donde posicionamos el cursor.
; numMines : Número de minas que quedan por marcar.
; charac   : Carácter a escribir en pantalla
;;;;;
showMinesP1:
	push rbp
	mov  rbp, rsp
		
	
	
	mov rsp, rbp
	pop rbp
	ret


;;;;;
; Actualizar el contenido del Tablero de Juego con los datos de la 
; matriz (marks) y el número de minas que quedan por marcar.
; Se tiene que recorrer toda la matriz (marks), y para cada elemento 
; de la matriz posicionar el cursor en pantalla y mostrar los caracteres 
; de la matriz. 
; Después mostrar el valor de (numMines) en la parte inferior del tablero.
; Para posicionar el cursor se llama la subrutina gotoxyP1, 
; para a mostrar los caracteres se llama la subrutina printchP1 y para 
; mostrar (numMines) se llama a la subrutina ShowMinesP1.
;
; Variables globales utilizadas:	
; rowScreen: Fila de la pantalla donde posicionamos el cursor.
; colScreen: Columna de la pantalla donde posicionamos el cursor.
; charac   : Carácter a escribir en pantalla.
; marks    : Matriz con las minas marcadas y las minas abiertas.   
;;;;;  
updateBoardP1:
	push rbp
	mov  rbp, rsp

	

	mov rsp, rbp
	pop rbp
	ret


;;;;;		
; Actualizar la posición del cursor en el tablero, que tenemos indicada 
; con la variable (indexMat), en función de la tecla pulsada, 
; que tenemos en la variable (charac). 
; Si se sale fuera del tablero no actualizar la posición del cursor.
; Arriba y abajo:      ( indexMat = indexMat +/- 10 ) 
; Derecha y Izquierda: ( indexMat = indexMat +/- 1 ) 
; No se tiene que posicionar el cursor en pantalla.
;
; Variables globales utilizadas:	
; indexMat : Índice para acceder a las matrices mines y marks desde ensamblador.
; charac   : Carácter leído de teclado.
;;;;;  
moveCursorP1:
	push rbp
	mov  rbp, rsp

	
	
	mov rsp, rbp
	pop rbp
	ret


;;;;;  
; Marcar/desmarcar una mina en la matriz (marks) en la posición actual 
; del cursor indicada por la variable (indexMat).
; Si en aquella posición de la matriz (marks) hay un espacio en blanco
; y no hemos marcado todas las minas, marcamos una mina poniendo una 
; 'M' en la matriz (marks) y decrementamos el número de minas que quedan 
; por marcar (numMines), si en aquella posición de la matriz (marks) hay
; una 'M', pondremos un espacio (' ') en la matriz (marks) e 
; incrementaremos el número de minas que quedan por marcar (numMines).
; Si hay otro valor no cambiaremos nada.
; No se tiene que mostrar la matriz, sólo actualizar la matriz (marks) 
; y la variable (numMines).
;
; Variables globales utilizadas:	
; indexMat : índice para acceder a la matriz marks.
; marks    : Matriz con las minas marcadas y las minas abiertas.
; numMines : número de minas que quedan por marcar.
;;;;;  
mineMarkerP1:
	push rbp
	mov  rbp, rsp

	  
	
	mov rsp, rbp
	pop rbp
	ret
	

;;;;;  
; Verificar si hemos marcado todas las minas 
; Si (numMines=0) cambiar el estado a 2 (state=2) (Gana).
;
; Variables globales utilizadas:	
; numMines : Número de minas que quedan por marcar.
; state    : Indica el estado del juego
;;;;;  
checkMinesP1:
	push rbp
	mov  rbp, rsp

	

	mov rsp, rbp
	pop rbp
	ret


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Esta subrutina se da hecha. NO LA PODÉIS MODIFICAR.
; Muestra un mensaje debajo del tablero según el valor de la variable
; (state) llamando la función printMessageP1_C.
; (state) 0: Salir, hemos pulsado la tecla 'ESC' para salir.
;         1: Continuamos jugando.
;         2: Gana, se han marcado todas las minas.
; Se espera que se pulse una tecla para continuar.
;         
; Variables globales utilizadas:	
; rowScreen: Fila de la pantalla donde posicionamos el cursor.
; colScreen: Columna de la pantalla donde posicionamos el cursor.
; state    : Indica el estado del juego
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
printMessageP1:
   push rbp
   mov  rbp, rsp
   ;guardamos el estado de los registros del procesador porque
   ;las funciones de C no mantienen el estado de los registros.
   push rax
   push rbx
   push rcx
   push rdx
   push rsi
   push rdi
   push r8
   push r9
   push r10
   push r11
   push r12
   push r13
   push r14
   push r15

   ;Llamamos a la función printMessageP1_C() desde ensamblador, 
   call printMessageP1_C
 
   pop r15
   pop r14
   pop r13
   pop r12
   pop r11
   pop r10
   pop r9
   pop r8
   pop rdi
   pop rsi
   pop rdx
   pop rcx
   pop rbx
   pop rax

   mov rsp, rbp
   pop rbp
   ret

  
;;;;;
; Esta subrutina se da hecha. NO LA PODÉIS MODIFICAR.
; Juego del Buscaminas
; Función principal del juego
; Permite jugar al juego del buscaminas llamando a todas las funcionalidades.
;
; Pseudo código:
; Inicializar estado del juego, (state=1)
; Inicializar posición inicial del cursor:
; fila: 5 y columna: 4, (indexMat=54).
; Mostrar el tablero de juego llamando la función PrintBoardP1_C.
; Mientras (state=1) hacer:
;   Actualizar el contenido del Tablero de Juego y el número de minas
;     que quedan por marcar (llamar la subrutina updateBoardP1).
;   Posicionar el cursor dentro del tablero (llamar a la subrutina posCurScreenP1).
;   Leer una tecla y guardarla en la variable (charac) (llamar a la subrutina getchP1). 
;   Según la tecla leída llamaremos a la función correspondiente.
;     - ['i','j','k' o 'l']       (llamar a la subrutina MoveCursorP1).
;     - 'm'                       (llamar a la subrutina MineMarkerP1).
;     - '<ESC>'  (codi ASCII 27) poner (state = 0) para salir.   
;   Verificar si hemos marcado todas las minas (llamar a la subrutina CheckMinesP1).
; Fin mientras.
; Salir: 
;   Actualizar el contenido del Tablero de Juego y el número de minas que 
;   quedan por marcar (llamar a la subrutina updateBoardP1).
;   Mostrar el mensaje de salida que corresponda (llamar a la subrutina
;   printMessageP1).
; Se acaba el juego.
; 
; Variables globales utilizadas:	
; indexMat : índice para acceder a la matriz marks.
; charac   : Carácter leido de teclado.
; state    : Estado del juego.
;;;;;  
playP1:
	push rbp
	mov  rbp, rsp

	mov DWORD[state], 1       ;Estado para empezar a jugar

	mov QWORD[indexMat], 54   ;indexMat = 54;
	
	call printBoardP1_C       ;printBoardP1_C();

	playP1_Loop:              
		cmp  DWORD[state], 1  ;while (state == 1)
		jne  playP1_PrintMessage

		call updateBoardP1    ;updateBoardP1_C();
		
		call posCurScreenP1   ;posCurScreenP1_C();
		
		call getchP1          ;getchP1_C(); 
		mov  al, BYTE[charac] 

		cmp al, 'i'		      ;if (charac>='i' && charac<='l')
		je  playP1_MoveCursor
		cmp al, 'j'		      
		je  playP1_MoveCursor
		cmp al, 'k'		      
		je  playP1_MoveCursor
		cmp al, 'l'		      
		je  playP1_MoveCursor
		cmp al, 'm'		      ;if (charac=='m')
		je  playP1_MineMarker
		cmp al, 27		      ;if (charac==27)
		je  playP1_Exit
		jmp playP1_Check

		playP1_MoveCursor     
		call moveCursorP1     ;moveCursorP1_C();
		jmp  playP1_Check

		playP1_MineMarker     ;mineMarkerP1_C();
		call mineMarkerP1
		jmp  playP1_Check

		playP1_Exit:
		mov DWORD[state], 0   ;state = 0;
		
		playP1_Check:
		call checkMinesP1     ;checkMinesP1_C();

		jmp  playP1_Loop

	playP1_PrintMessage:
	call updateBoardP1        ;updateBoardP1_C();
	call printMessageP1       ;printMessageP1_C();
    
	playP1_End:		
	mov rsp, rbp
	pop rbp
	ret

