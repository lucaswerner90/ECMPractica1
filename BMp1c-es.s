	.file	"BMp1c-es.c"
	.text
	.comm	rowScreen,8,8
	.comm	colScreen,8,8
	.comm	rowMat,8,8
	.comm	colMat,8,8
	.comm	indexMat,8,8
	.comm	charac,1,1
	.globl	mines
	.data
	.align 32
	.type	mines, @object
	.size	mines, 100
mines:
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	32
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	32
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	42
	.globl	marks
	.align 32
	.type	marks, @object
	.size	marks, 100
marks:
	.byte	48
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	49
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	49
	.byte	77
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	50
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	32
	.byte	77
	.globl	numMines
	.align 4
	.type	numMines, @object
	.size	numMines, 4
numMines:
	.long	18
	.globl	state
	.align 4
	.type	state, @object
	.size	state, 4
state:
	.long	1
	.section	.rodata
.LC0:
	.string	"\033[2J"
	.text
	.globl	clearScreen_C
	.type	clearScreen_C, @function
clearScreen_C:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	clearScreen_C, .-clearScreen_C
	.section	.rodata
.LC1:
	.string	"\033[%ld;%ldH"
	.text
	.globl	gotoxyP1_C
	.type	gotoxyP1_C, @function
gotoxyP1_C:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	colScreen(%rip), %rdx
	movq	rowScreen(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	gotoxyP1_C, .-gotoxyP1_C
	.globl	printchP1_C
	.type	printchP1_C, @function
printchP1_C:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movzbl	charac(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	printchP1_C, .-printchP1_C
	.globl	getchP1_C
	.type	getchP1_C, @function
getchP1_C:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	oldt.2940(%rip), %rsi
	movl	$0, %edi
	call	tcgetattr@PLT
	movq	oldt.2940(%rip), %rax
	movq	8+oldt.2940(%rip), %rdx
	movq	%rax, newt.2941(%rip)
	movq	%rdx, 8+newt.2941(%rip)
	movq	16+oldt.2940(%rip), %rax
	movq	24+oldt.2940(%rip), %rdx
	movq	%rax, 16+newt.2941(%rip)
	movq	%rdx, 24+newt.2941(%rip)
	movq	32+oldt.2940(%rip), %rax
	movq	40+oldt.2940(%rip), %rdx
	movq	%rax, 32+newt.2941(%rip)
	movq	%rdx, 40+newt.2941(%rip)
	movq	48+oldt.2940(%rip), %rax
	movq	%rax, 48+newt.2941(%rip)
	movl	56+oldt.2940(%rip), %eax
	movl	%eax, 56+newt.2941(%rip)
	movl	12+newt.2941(%rip), %eax
	andl	$-11, %eax
	movl	%eax, 12+newt.2941(%rip)
	leaq	newt.2941(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	tcsetattr@PLT
	call	getchar@PLT
	movb	%al, charac(%rip)
	leaq	oldt.2940(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	call	tcsetattr@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	getchP1_C, .-getchP1_C
	.section	.rodata
	.align 8
.LC2:
	.string	"                                     "
	.align 8
.LC3:
	.string	"            Developed by:            "
.LC4:
	.string	"         ( %s )   \n"
	.align 8
.LC5:
	.string	" ___________________________________ "
	.align 8
.LC6:
	.string	"|                                   |"
	.align 8
.LC7:
	.string	"|          MENU MINESWEEPER         |"
	.align 8
.LC8:
	.string	"|___________________________________|"
	.align 8
.LC9:
	.string	"|          1. posCurScreen          |"
	.align 8
.LC10:
	.string	"|          2. showMines             |"
	.align 8
.LC11:
	.string	"|          3. updateBoard           |"
	.align 8
.LC12:
	.string	"|          4. moveCursor            |"
	.align 8
.LC13:
	.string	"|          5. mineMarker            |"
	.align 8
.LC14:
	.string	"|          6.                       |"
	.align 8
.LC15:
	.string	"|          7. checkMines            |"
	.align 8
.LC16:
	.string	"|          8. Play Game             |"
	.align 8
.LC17:
	.string	"|          9. Play Game C           |"
	.align 8
.LC18:
	.string	"|          0. Exit                  |"
	.align 8
.LC19:
	.string	"|             OPTION:               |"
	.text
	.globl	printMenuP1_C
	.type	printMenuP1_C, @function
printMenuP1_C:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	call	clearScreen_C
	movq	$1, rowScreen(%rip)
	movq	$1, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	leaq	developer(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rdi
	call	puts@PLT
	leaq	.LC17(%rip), %rdi
	call	puts@PLT
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movb	$32, charac(%rip)
	jmp	.L6
.L7:
	movq	$21, rowScreen(%rip)
	movq	$23, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	movl	$0, %eax
	call	getchP1_C
	movl	$0, %eax
	call	printchP1_C
.L6:
	movzbl	charac(%rip), %eax
	cmpb	$47, %al
	jle	.L7
	movzbl	charac(%rip), %eax
	cmpb	$57, %al
	jg	.L7
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	printMenuP1_C, .-printMenuP1_C
	.section	.rodata
	.align 8
.LC20:
	.string	" _____________________________________________ "
	.align 8
.LC21:
	.string	"|                                             |"
	.align 8
.LC22:
	.string	"|                  MINESWEEPER                |"
	.align 8
.LC23:
	.string	"|_____________________________________________|"
	.align 8
.LC24:
	.string	"|     0   1   2   3   4   5   6   7   8   9   |"
	.align 8
.LC25:
	.string	"|   +---+---+---+---+---+---+---+---+---+---+ |"
	.align 8
.LC26:
	.string	"| 0 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC27:
	.string	"| 1 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC28:
	.string	"| 2 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC29:
	.string	"| 3 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC30:
	.string	"| 4 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC31:
	.string	"| 5 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC32:
	.string	"| 6 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC33:
	.string	"| 7 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC34:
	.string	"| 8 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC35:
	.string	"| 9 |   |   |   |   |   |   |   |   |   |   | |"
	.align 8
.LC36:
	.string	"|     Mines to  Mark:  _ _                    |"
	.align 8
.LC37:
	.string	"|   (m)Mark Mine    (Space)Open  (ESC)Exit    |"
	.align 8
.LC38:
	.string	"|   (i)Up    (j)Left    (k)Down    (l)Right   |"
	.text
	.globl	printBoardP1_C
	.type	printBoardP1_C, @function
printBoardP1_C:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$1, rowScreen(%rip)
	movq	$1, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC33(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC34(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC35(%rip), %rdi
	call	puts@PLT
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
	leaq	.LC36(%rip), %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	leaq	.LC37(%rip), %rdi
	call	puts@PLT
	leaq	.LC38(%rip), %rdi
	call	puts@PLT
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	printBoardP1_C, .-printBoardP1_C
	.globl	posCurScreenP1_C
	.type	posCurScreenP1_C, @function
posCurScreenP1_C:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	$7, %rax
	movq	%rax, rowScreen(%rip)
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	leaq	0(,%rdx,4), %rax
	addq	$7, %rax
	movq	%rax, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	posCurScreenP1_C, .-posCurScreenP1_C
	.globl	showMinesP1_C
	.type	showMinesP1_C, @function
showMinesP1_C:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	numMines(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movb	%al, charac(%rip)
	movzbl	charac(%rip), %eax
	addl	$48, %eax
	movb	%al, charac(%rip)
	movq	$27, rowScreen(%rip)
	movq	$24, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	movl	$0, %eax
	call	printchP1_C
	movl	numMines(%rip), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	%edx, %eax
	movb	%al, charac(%rip)
	movzbl	charac(%rip), %eax
	addl	$48, %eax
	movb	%al, charac(%rip)
	movq	$26, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	movl	$0, %eax
	call	printchP1_C
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	showMinesP1_C, .-showMinesP1_C
	.globl	updateBoardP1_C
	.type	updateBoardP1_C, @function
updateBoardP1_C:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	$7, rowScreen(%rip)
	movl	$0, -8(%rbp)
	jmp	.L12
.L15:
	movq	$7, colScreen(%rip)
	movl	$0, -4(%rbp)
	jmp	.L13
.L14:
	movl	$0, %eax
	call	gotoxyP1_C
	movl	-4(%rbp), %eax
	movslq	%eax, %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	marks(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, charac(%rip)
	movl	$0, %eax
	call	printchP1_C
	movq	colScreen(%rip), %rax
	addq	$4, %rax
	movq	%rax, colScreen(%rip)
	addl	$1, -4(%rbp)
.L13:
	cmpl	$9, -4(%rbp)
	jle	.L14
	movq	rowScreen(%rip), %rax
	addq	$2, %rax
	movq	%rax, rowScreen(%rip)
	addl	$1, -8(%rbp)
.L12:
	cmpl	$9, -8(%rbp)
	jle	.L15
	movl	$0, %eax
	call	showMinesP1_C
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	updateBoardP1_C, .-updateBoardP1_C
	.globl	moveCursorP1_C
	.type	moveCursorP1_C, @function
moveCursorP1_C:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movl	%eax, -8(%rbp)
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movl	%edx, -4(%rbp)
	movzbl	charac(%rip), %eax
	movsbl	%al, %eax
	cmpl	$106, %eax
	je	.L18
	cmpl	$106, %eax
	jg	.L19
	cmpl	$105, %eax
	je	.L20
	jmp	.L31
.L19:
	cmpl	$107, %eax
	je	.L21
	cmpl	$108, %eax
	je	.L22
	jmp	.L31
.L20:
	cmpl	$0, -8(%rbp)
	jle	.L27
	movq	indexMat(%rip), %rax
	subq	$10, %rax
	movq	%rax, indexMat(%rip)
	jmp	.L27
.L18:
	cmpl	$0, -4(%rbp)
	jle	.L28
	movq	indexMat(%rip), %rax
	subq	$1, %rax
	movq	%rax, indexMat(%rip)
	jmp	.L28
.L21:
	cmpl	$8, -8(%rbp)
	jg	.L29
	movq	indexMat(%rip), %rax
	addq	$10, %rax
	movq	%rax, indexMat(%rip)
	jmp	.L29
.L22:
	cmpl	$8, -4(%rbp)
	jg	.L30
	movq	indexMat(%rip), %rax
	addq	$1, %rax
	movq	%rax, indexMat(%rip)
	jmp	.L30
.L27:
	nop
	jmp	.L31
.L28:
	nop
	jmp	.L31
.L29:
	nop
	jmp	.L31
.L30:
	nop
.L31:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	moveCursorP1_C, .-moveCursorP1_C
	.globl	mineMarkerP1_C
	.type	mineMarkerP1_C, @function
mineMarkerP1_C:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, rowMat(%rip)
	movq	indexMat(%rip), %rcx
	movabsq	$7378697629483820647, %rdx
	movq	%rcx, %rax
	imulq	%rdx
	sarq	$2, %rdx
	movq	%rcx, %rax
	sarq	$63, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, colMat(%rip)
	movq	rowMat(%rip), %rdx
	movq	colMat(%rip), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	marks(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	jne	.L33
	movl	numMines(%rip), %eax
	testl	%eax, %eax
	jle	.L33
	movq	rowMat(%rip), %rdx
	movq	colMat(%rip), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	marks(%rip), %rax
	addq	%rdx, %rax
	movb	$77, (%rax)
	movl	numMines(%rip), %eax
	subl	$1, %eax
	movl	%eax, numMines(%rip)
	jmp	.L35
.L33:
	movq	rowMat(%rip), %rdx
	movq	colMat(%rip), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	marks(%rip), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$77, %al
	jne	.L35
	movq	rowMat(%rip), %rdx
	movq	colMat(%rip), %rcx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	leaq	(%rax,%rcx), %rdx
	leaq	marks(%rip), %rax
	addq	%rdx, %rax
	movb	$32, (%rax)
	movl	numMines(%rip), %eax
	addl	$1, %eax
	movl	%eax, numMines(%rip)
.L35:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mineMarkerP1_C, .-mineMarkerP1_C
	.globl	checkMinesP1_C
	.type	checkMinesP1_C, @function
checkMinesP1_C:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	numMines(%rip), %eax
	testl	%eax, %eax
	jne	.L38
	movl	$2, state(%rip)
.L38:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	checkMinesP1_C, .-checkMinesP1_C
	.section	.rodata
.LC39:
	.string	"<< EXIT: ESC >>"
.LC40:
	.string	"++ YOU WIN ! ++"
	.text
	.globl	printMessageP1_C
	.type	printMessageP1_C, @function
printMessageP1_C:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	$27, rowScreen(%rip)
	movq	$30, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	movl	state(%rip), %eax
	testl	%eax, %eax
	je	.L41
	cmpl	$2, %eax
	je	.L42
	jmp	.L40
.L41:
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L40
.L42:
	leaq	.LC40(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L40:
	movl	$0, %eax
	call	getchP1_C
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	printMessageP1_C, .-printMessageP1_C
	.globl	playP1_C
	.type	playP1_C, @function
playP1_C:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, state(%rip)
	movq	$54, indexMat(%rip)
	movl	$0, %eax
	call	printBoardP1_C
	jmp	.L44
.L48:
	movl	$0, %eax
	call	updateBoardP1_C
	movl	$0, %eax
	call	posCurScreenP1_C
	movl	$0, %eax
	call	getchP1_C
	movzbl	charac(%rip), %eax
	cmpb	$104, %al
	jle	.L45
	movzbl	charac(%rip), %eax
	cmpb	$108, %al
	jg	.L45
	movl	$0, %eax
	call	moveCursorP1_C
.L45:
	movzbl	charac(%rip), %eax
	cmpb	$109, %al
	jne	.L46
	movl	$0, %eax
	call	mineMarkerP1_C
.L46:
	movzbl	charac(%rip), %eax
	cmpb	$27, %al
	jne	.L47
	movl	$0, state(%rip)
.L47:
	movl	$0, %eax
	call	checkMinesP1_C
.L44:
	movl	state(%rip), %eax
	cmpl	$1, %eax
	je	.L48
	movl	$0, %eax
	call	updateBoardP1_C
	movl	$0, %eax
	call	printMessageP1_C
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	playP1_C, .-playP1_C
	.section	.rodata
.LC41:
	.string	" %c"
.LC42:
	.string	" Press any key "
.LC43:
	.string	"Press any key "
	.align 8
.LC44:
	.string	"\n    Move cursor: i:Up, j:Left, k:Down, l:Right "
.LC45:
	.string	"Incorrect option"
.LC46:
	.string	" Mark a Mine  "
.LC47:
	.string	"** MORE MINES **"
.LC48:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	jmp	.L50
.L67:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printMenuP1_C
	movzbl	charac(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L50
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L52(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L52(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L52:
	.long	.L69-.L52
	.long	.L53-.L52
	.long	.L54-.L52
	.long	.L55-.L52
	.long	.L56-.L52
	.long	.L57-.L52
	.long	.L50-.L52
	.long	.L58-.L52
	.long	.L59-.L52
	.long	.L60-.L52
	.text
.L53:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	movq	$27, rowScreen(%rip)
	movq	$30, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$11, indexMat(%rip)
	movl	$0, %eax
	call	posCurScreenP1_C
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L54:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	movl	$0, %eax
	call	showMinesP1@PLT
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L55:
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC41(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	movl	$0, %eax
	call	updateBoardP1@PLT
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L56:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$22, indexMat(%rip)
	movl	$0, %eax
	call	posCurScreenP1_C
	movl	$0, %eax
	call	getchP1_C
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movzbl	charac(%rip), %eax
	cmpb	$104, %al
	jle	.L61
	movzbl	charac(%rip), %eax
	cmpb	$108, %al
	jg	.L61
	movl	$0, %eax
	call	moveCursorP1@PLT
	movl	$0, %eax
	call	posCurScreenP1_C
	jmp	.L62
.L61:
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L62:
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L57:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	movl	$0, %eax
	call	updateBoardP1_C
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	$23, indexMat(%rip)
	movl	$0, %eax
	call	posCurScreenP1_C
	movl	$0, %eax
	call	getchP1_C
	movzbl	charac(%rip), %eax
	cmpb	$109, %al
	jne	.L63
	movl	$0, %eax
	call	mineMarkerP1@PLT
	movl	$0, %eax
	call	updateBoardP1_C
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC42(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L64
.L63:
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L64:
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L58:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	printBoardP1_C
	movl	$0, %eax
	call	updateBoardP1@PLT
	movq	$27, rowScreen(%rip)
	movq	$29, colScreen(%rip)
	movl	$0, %eax
	call	gotoxyP1_C
	movl	numMines(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$0, numMines(%rip)
	movl	$0, %eax
	call	checkMinesP1@PLT
	movl	state(%rip), %eax
	cmpl	$2, %eax
	jne	.L65
	leaq	.LC40(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L66
.L65:
	leaq	.LC47(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L66:
	movl	-4(%rbp), %eax
	movl	%eax, numMines(%rip)
	movl	$0, %eax
	call	getchP1_C
	jmp	.L50
.L59:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	playP1@PLT
	jmp	.L50
.L60:
	movl	$0, %eax
	call	clearScreen_C
	movl	$0, %eax
	call	playP1_C
	jmp	.L50
.L69:
	nop
.L50:
	cmpl	$48, -8(%rbp)
	jne	.L67
	leaq	.LC48(%rip), %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.local	oldt.2940
	.comm	oldt.2940,60,32
	.local	newt.2941
	.comm	newt.2941,60,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
