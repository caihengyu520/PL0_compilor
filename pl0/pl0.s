	.file	"pl0.c"
	.globl	err_msg
	.section	.rodata
.LC0:
	.string	""
	.align 8
.LC1:
	.string	"Found ':=' when expecting '='."
	.align 8
.LC2:
	.string	"There must be a number to follow '='."
	.align 8
.LC3:
	.string	"There must be an '=' to follow the identifier."
	.align 8
.LC4:
	.string	"There must be an identifier to follow 'const', 'var', or 'procedure'."
.LC5:
	.string	"Missing ',' or ';'."
.LC6:
	.string	"Incorrect procedure name."
.LC7:
	.string	"Statement expected."
	.align 8
.LC8:
	.string	"Follow the statement is an incorrect symbol."
.LC9:
	.string	"'.' expected."
.LC10:
	.string	"';' expected."
.LC11:
	.string	"Undeclared identifier."
.LC12:
	.string	"Illegal assignment."
.LC13:
	.string	"':=' expected."
	.align 8
.LC14:
	.string	"There must be an identifier to follow the 'call'."
	.align 8
.LC15:
	.string	"A constant or variable can not be called."
.LC16:
	.string	"'then' expected."
.LC17:
	.string	"';' or 'end' expected."
.LC18:
	.string	"'do' expected."
.LC19:
	.string	"Incorrect symbol."
.LC20:
	.string	"Relative operators expected."
	.align 8
.LC21:
	.string	"Procedure identifier can not be in an expression."
.LC22:
	.string	"Missing ')'."
	.align 8
.LC23:
	.string	"The symbol can not be followed by a factor."
	.align 8
.LC24:
	.string	"The symbol can not be as the beginning of an expression."
.LC25:
	.string	"The number is too great."
.LC26:
	.string	"There are too many levels."
	.data
	.align 32
	.type	err_msg, @object
	.size	err_msg, 264
err_msg:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.quad	.LC4
	.quad	.LC5
	.quad	.LC6
	.quad	.LC7
	.quad	.LC8
	.quad	.LC9
	.quad	.LC10
	.quad	.LC11
	.quad	.LC12
	.quad	.LC13
	.quad	.LC14
	.quad	.LC15
	.quad	.LC16
	.quad	.LC17
	.quad	.LC18
	.quad	.LC19
	.quad	.LC20
	.quad	.LC21
	.quad	.LC22
	.quad	.LC23
	.quad	.LC24
	.quad	.LC25
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC0
	.quad	.LC26
	.comm	ch,1,1
	.comm	sym,4,4
	.comm	id,11,8
	.comm	num,4,4
	.comm	cc,4,4
	.comm	ll,4,4
	.comm	kk,4,4
	.comm	err,4,4
	.comm	cx,4,4
	.globl	level
	.bss
	.align 4
	.type	level, @object
	.size	level, 4
level:
	.zero	4
	.globl	tx
	.align 4
	.type	tx, @object
	.size	tx, 4
tx:
	.zero	4
	.comm	line,80,32
	.comm	code,6000,32
	.globl	word
	.section	.rodata
.LC27:
	.string	"begin"
.LC28:
	.string	"call"
.LC29:
	.string	"const"
.LC30:
	.string	"do"
.LC31:
	.string	"end"
.LC32:
	.string	"if"
.LC33:
	.string	"odd"
.LC34:
	.string	"procedure"
.LC35:
	.string	"then"
.LC36:
	.string	"var"
.LC37:
	.string	"while"
	.data
	.align 32
	.type	word, @object
	.size	word, 96
word:
	.quad	.LC0
	.quad	.LC27
	.quad	.LC28
	.quad	.LC29
	.quad	.LC30
	.quad	.LC31
	.quad	.LC32
	.quad	.LC33
	.quad	.LC34
	.quad	.LC35
	.quad	.LC36
	.quad	.LC37
	.globl	wsym
	.align 32
	.type	wsym, @object
	.size	wsym, 48
wsym:
	.long	0
	.long	20
	.long	26
	.long	27
	.long	25
	.long	21
	.long	22
	.long	7
	.long	29
	.long	23
	.long	28
	.long	24
	.globl	ssym
	.align 32
	.type	ssym, @object
	.size	ssym, 44
ssym:
	.long	0
	.long	3
	.long	4
	.long	5
	.long	6
	.long	14
	.long	15
	.long	8
	.long	16
	.long	18
	.long	17
	.globl	csym
	.align 8
	.type	csym, @object
	.size	csym, 11
csym:
	.byte	32
	.byte	43
	.byte	45
	.byte	42
	.byte	47
	.byte	40
	.byte	41
	.byte	61
	.byte	44
	.byte	46
	.byte	59
	.globl	mnemonic
	.section	.rodata
.LC38:
	.string	"LIT"
.LC39:
	.string	"OPR"
.LC40:
	.string	"LOD"
.LC41:
	.string	"STO"
.LC42:
	.string	"CAL"
.LC43:
	.string	"INT"
.LC44:
	.string	"JMP"
.LC45:
	.string	"JPC"
	.data
	.align 32
	.type	mnemonic, @object
	.size	mnemonic, 64
mnemonic:
	.quad	.LC38
	.quad	.LC39
	.quad	.LC40
	.quad	.LC41
	.quad	.LC42
	.quad	.LC43
	.quad	.LC44
	.quad	.LC45
	.comm	table,10000,32
	.comm	infile,8,8
	.globl	true_out
	.bss
	.align 32
	.type	true_out, @object
	.size	true_out, 160
true_out:
	.zero	160
	.globl	false_out
	.align 32
	.type	false_out, @object
	.size	false_out, 160
false_out:
	.zero	160
	.globl	true_count
	.align 16
	.type	true_count, @object
	.size	true_count, 16
true_count:
	.zero	16
	.globl	false_count
	.align 16
	.type	false_count, @object
	.size	false_count, 16
false_count:
	.zero	16
	.globl	condition_level
	.align 4
	.type	condition_level, @object
	.size	condition_level, 4
condition_level:
	.zero	4
	.comm	phi,8,8
	.comm	declbegsys,8,8
	.comm	statbegsys,8,8
	.comm	facbegsys,8,8
	.comm	relset,8,8
	.text
	.globl	uniteset
	.type	uniteset, @function
uniteset:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.L2
.L5:
	movl	$16, %edi
	call	malloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, %edx
	jge	.L3
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L2
.L3:
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L2:
	cmpq	$0, -24(%rbp)
	je	.L6
	cmpq	$0, -32(%rbp)
	jne	.L5
	jmp	.L6
.L7:
	movl	$16, %edi
	call	malloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
.L6:
	cmpq	$0, -24(%rbp)
	jne	.L7
	jmp	.L8
.L9:
	movl	$16, %edi
	call	malloc
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.L8:
	cmpq	$0, -32(%rbp)
	jne	.L9
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	uniteset, .-uniteset
	.globl	setinsert
	.type	setinsert, @function
setinsert:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.L12
.L14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L12:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L13
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	jl	.L14
.L13:
	movl	$16, %edi
	call	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	setinsert, .-setinsert
	.globl	createset
	.type	createset, @function
createset:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movl	%edi, -228(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -160(%rbp)
	movq	%rcx, -152(%rbp)
	movq	%r8, -144(%rbp)
	movq	%r9, -136(%rbp)
	testb	%al, %al
	je	.L16
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm1, -112(%rbp)
	movaps	%xmm2, -96(%rbp)
	movaps	%xmm3, -80(%rbp)
	movaps	%xmm4, -64(%rbp)
	movaps	%xmm5, -48(%rbp)
	movaps	%xmm6, -32(%rbp)
	movaps	%xmm7, -16(%rbp)
.L16:
	movq	%fs:40, %rax
	movq	%rax, -184(%rbp)
	xorl	%eax, %eax
	movl	$16, %edi
	call	malloc
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$8, -208(%rbp)
	movl	$48, -204(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -200(%rbp)
	leaq	-176(%rbp), %rax
	movq	%rax, -192(%rbp)
	jmp	.L17
.L20:
	movl	-228(%rbp), %edx
	movq	-216(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	setinsert
	movl	-208(%rbp), %eax
	cmpl	$48, %eax
	jnb	.L18
	movq	-192(%rbp), %rax
	movl	-208(%rbp), %edx
	movl	%edx, %edx
	addq	%rdx, %rax
	movl	-208(%rbp), %edx
	addl	$8, %edx
	movl	%edx, -208(%rbp)
	jmp	.L19
.L18:
	movq	-200(%rbp), %rax
	leaq	8(%rax), %rdx
	movq	%rdx, -200(%rbp)
.L19:
	movl	(%rax), %eax
	movl	%eax, -228(%rbp)
.L17:
	cmpl	$0, -228(%rbp)
	jne	.L20
	movq	-216(%rbp), %rax
	movq	-184(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L22
	call	__stack_chk_fail
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	createset, .-createset
	.globl	destroyset
	.type	destroyset, @function
destroyset:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	jmp	.L24
.L25:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$-1000000, (%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free
.L24:
	cmpq	$0, -24(%rbp)
	jne	.L25
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	destroyset, .-destroyset
	.globl	inset
	.type	inset, @function
inset:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L27
.L29:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
.L27:
	cmpq	$0, -16(%rbp)
	je	.L28
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jl	.L29
.L28:
	cmpq	$0, -16(%rbp)
	je	.L30
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-4(%rbp), %eax
	jne	.L30
	movl	$1, %eax
	jmp	.L31
.L30:
	movl	$0, %eax
.L31:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	inset, .-inset
	.section	.rodata
.LC46:
	.string	"      "
.LC47:
	.string	"^"
.LC48:
	.string	"Error %3d: %s\n"
	.text
	.globl	error
	.type	error, @function
error:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$.LC46, %edi
	movl	$0, %eax
	call	printf
	movl	$1, -4(%rbp)
	jmp	.L33
.L34:
	movl	$32, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L33:
	movl	cc(%rip), %eax
	subl	$1, %eax
	cmpl	-4(%rbp), %eax
	jge	.L34
	movl	$.LC47, %edi
	call	puts
	movl	-20(%rbp), %eax
	cltq
	movq	err_msg(,%rax,8), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC48, %edi
	movl	$0, %eax
	call	printf
	movl	err(%rip), %eax
	addl	$1, %eax
	movl	%eax, err(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	error, .-error
	.section	.rodata
.LC49:
	.string	"\nPROGRAM INCOMPLETE"
.LC50:
	.string	"%5d  "
	.text
	.globl	getch
	.type	getch, @function
getch:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	cc(%rip), %edx
	movl	ll(%rip), %eax
	cmpl	%eax, %edx
	jne	.L36
	movq	infile(%rip), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	je	.L37
	movl	$.LC49, %edi
	call	puts
	movl	$1, %edi
	call	exit
.L37:
	movl	$0, cc(%rip)
	movl	cc(%rip), %eax
	movl	%eax, ll(%rip)
	movl	cx(%rip), %eax
	movl	%eax, %esi
	movl	$.LC50, %edi
	movl	$0, %eax
	call	printf
	jmp	.L38
.L40:
	movzbl	ch(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	movl	ll(%rip), %eax
	addl	$1, %eax
	movl	%eax, ll(%rip)
	movl	ll(%rip), %eax
	movzbl	ch(%rip), %edx
	cltq
	movb	%dl, line(%rax)
.L38:
	movq	infile(%rip), %rax
	movq	%rax, %rdi
	call	feof
	testl	%eax, %eax
	jne	.L39
	movq	infile(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc
	movb	%al, ch(%rip)
	movzbl	ch(%rip), %eax
	cmpb	$10, %al
	jne	.L40
.L39:
	movl	$10, %edi
	call	putchar
	movl	ll(%rip), %eax
	addl	$1, %eax
	movl	%eax, ll(%rip)
	movl	ll(%rip), %eax
	cltq
	movb	$32, line(%rax)
.L36:
	movl	cc(%rip), %eax
	addl	$1, %eax
	movl	%eax, cc(%rip)
	movl	cc(%rip), %eax
	cltq
	movzbl	line(%rax), %eax
	movb	%al, ch(%rip)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	getch, .-getch
	.section	.rodata
	.align 8
.LC51:
	.string	"Fatal Error: Unknown character."
	.text
	.globl	getsym
	.type	getsym, @function
getsym:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	jmp	.L42
.L43:
	call	getch
.L42:
	movzbl	ch(%rip), %eax
	cmpb	$32, %al
	je	.L43
	movzbl	ch(%rip), %eax
	cmpb	$9, %al
	je	.L43
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	ch(%rip), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	je	.L44
	movl	$0, -36(%rbp)
.L46:
	cmpl	$9, -36(%rbp)
	jg	.L45
	movl	-36(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -36(%rbp)
	movzbl	ch(%rip), %edx
	cltq
	movb	%dl, -32(%rbp,%rax)
.L45:
	call	getch
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	ch(%rip), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$1024, %eax
	testl	%eax, %eax
	jne	.L46
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	ch(%rip), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L46
	movl	-36(%rbp), %eax
	cltq
	movb	$0, -32(%rbp,%rax)
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$id, %edi
	call	strcpy
	movq	$id, word(%rip)
	movl	$11, -40(%rbp)
	nop
.L47:
	movl	-40(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	movq	word(,%rax,8), %rax
	movq	%rax, %rsi
	movl	$id, %edi
	call	strcmp
	testl	%eax, %eax
	jne	.L47
	addl	$1, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L48
	movl	-40(%rbp), %eax
	cltq
	movl	wsym(,%rax,4), %eax
	movl	%eax, sym(%rip)
	jmp	.L67
.L48:
	movl	$1, sym(%rip)
	jmp	.L67
.L44:
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	ch(%rip), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	je	.L51
	movl	$0, num(%rip)
	movl	num(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$2, sym(%rip)
.L52:
	movl	num(%rip), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movzbl	ch(%rip), %eax
	movsbl	%al, %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, num(%rip)
	addl	$1, -36(%rbp)
	call	getch
	call	__ctype_b_loc
	movq	(%rax), %rax
	movzbl	ch(%rip), %edx
	movsbq	%dl, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$2048, %eax
	testl	%eax, %eax
	jne	.L52
	cmpl	$14, -36(%rbp)
	jle	.L67
	movl	$25, %edi
	call	error
	jmp	.L67
.L51:
	movzbl	ch(%rip), %eax
	cmpb	$58, %al
	jne	.L54
	call	getch
	movzbl	ch(%rip), %eax
	cmpb	$61, %al
	jne	.L55
	movl	$19, sym(%rip)
	call	getch
	jmp	.L67
.L55:
	movl	$0, sym(%rip)
	jmp	.L67
.L54:
	movzbl	ch(%rip), %eax
	cmpb	$62, %al
	jne	.L57
	call	getch
	movzbl	ch(%rip), %eax
	cmpb	$61, %al
	jne	.L58
	movl	$13, sym(%rip)
	call	getch
	jmp	.L67
.L58:
	movl	$12, sym(%rip)
	jmp	.L67
.L57:
	movzbl	ch(%rip), %eax
	cmpb	$60, %al
	jne	.L60
	call	getch
	movzbl	ch(%rip), %eax
	cmpb	$61, %al
	jne	.L61
	movl	$11, sym(%rip)
	call	getch
	jmp	.L67
.L61:
	movzbl	ch(%rip), %eax
	cmpb	$62, %al
	jne	.L63
	movl	$9, sym(%rip)
	call	getch
	jmp	.L67
.L63:
	movl	$10, sym(%rip)
	jmp	.L67
.L60:
	movl	$10, -40(%rbp)
	movzbl	ch(%rip), %eax
	movb	%al, csym(%rip)
	nop
.L64:
	movl	-40(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -40(%rbp)
	cltq
	movzbl	csym(%rax), %edx
	movzbl	ch(%rip), %eax
	cmpb	%al, %dl
	jne	.L64
	addl	$1, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.L65
	movl	-40(%rbp), %eax
	cltq
	movl	ssym(,%rax,4), %eax
	movl	%eax, sym(%rip)
	call	getch
	jmp	.L67
.L65:
	movl	$.LC51, %edi
	call	puts
	movl	$1, %edi
	call	exit
.L67:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L66
	call	__stack_chk_fail
.L66:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	getsym, .-getsym
	.section	.rodata
	.align 8
.LC52:
	.string	"Fatal Error: Program too long."
	.text
	.globl	gen
	.type	gen, @function
gen:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	cx(%rip), %eax
	cmpl	$500, %eax
	jle	.L69
	movl	$.LC52, %edi
	call	puts
	movl	$1, %edi
	call	exit
.L69:
	movl	cx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	code(%rax), %rdx
	movl	-4(%rbp), %eax
	movl	%eax, (%rdx)
	movl	cx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	code+4(%rax), %rdx
	movl	-8(%rbp), %eax
	movl	%eax, (%rdx)
	movl	cx(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, cx(%rip)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	code+8(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	%eax, (%rdx)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	gen, .-gen
	.globl	test
	.type	test, @function
test:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	sym(%rip), %eax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	jne	.L74
	movl	-36(%rbp), %eax
	movl	%eax, %edi
	call	error
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	jmp	.L72
.L73:
	call	getsym
.L72:
	movl	sym(%rip), %eax
	movq	-8(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	je	.L73
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
.L74:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	test, .-test
	.comm	dx,4,4
	.globl	enter
	.type	enter, @function
enter:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	tx(%rip), %eax
	addl	$1, %eax
	movl	%eax, tx(%rip)
	movl	tx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movl	$id, %esi
	movq	%rax, %rdi
	call	strcpy
	movl	tx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	table+12(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	%eax, (%rdx)
	movl	-20(%rbp), %eax
	cmpl	$1, %eax
	je	.L77
	cmpl	$2, %eax
	je	.L78
	testl	%eax, %eax
	je	.L79
	jmp	.L81
.L79:
	movl	num(%rip), %eax
	cmpl	$32767, %eax
	jle	.L80
	movl	$25, %edi
	call	error
	movl	$0, num(%rip)
.L80:
	movl	tx(%rip), %eax
	movl	num(%rip), %ecx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table+16, %rax
	movl	%ecx, (%rax)
	jmp	.L76
.L77:
	movl	tx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -8(%rbp)
	movl	level(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 16(%rax)
	movl	dx(%rip), %eax
	leal	1(%rax), %edx
	movl	%edx, dx(%rip)
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 18(%rax)
	jmp	.L76
.L78:
	movl	tx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -8(%rbp)
	movl	level(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, 16(%rax)
	nop
.L76:
.L81:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	enter, .-enter
	.globl	position
	.type	position, @function
position:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$table, %edi
	call	strcpy
	movl	tx(%rip), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
.L83:
	subl	$1, -4(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	table(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L83
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	position, .-position
	.globl	constdeclaration
	.type	constdeclaration, @function
constdeclaration:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L86
	call	getsym
	movl	sym(%rip), %eax
	cmpl	$8, %eax
	je	.L87
	movl	sym(%rip), %eax
	cmpl	$19, %eax
	jne	.L88
.L87:
	movl	sym(%rip), %eax
	cmpl	$19, %eax
	jne	.L89
	movl	$1, %edi
	call	error
.L89:
	call	getsym
	movl	sym(%rip), %eax
	cmpl	$2, %eax
	jne	.L90
	movl	$0, %edi
	call	enter
	call	getsym
	jmp	.L93
.L90:
	movl	$2, %edi
	call	error
	jmp	.L93
.L88:
	movl	$3, %edi
	call	error
	jmp	.L94
.L86:
	movl	$4, %edi
	call	error
	jmp	.L94
.L93:
.L94:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	constdeclaration, .-constdeclaration
	.globl	vardeclaration
	.type	vardeclaration, @function
vardeclaration:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L96
	movl	$1, %edi
	call	enter
	call	getsym
	jmp	.L98
.L96:
	movl	$4, %edi
	call	error
.L98:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	vardeclaration, .-vardeclaration
	.section	.rodata
.LC53:
	.string	"%5d %s\t%d\t%d\n"
	.text
	.globl	listcode
	.type	listcode, @function
listcode:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$10, %edi
	call	putchar
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L100
.L101:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code+8, %rax
	movl	(%rax), %esi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code+4, %rax
	movl	(%rax), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code, %rax
	movl	(%rax), %eax
	cltq
	movq	mnemonic(,%rax,8), %rdx
	movl	-4(%rbp), %eax
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC53, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L100:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L101
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	listcode, .-listcode
	.globl	factor
	.type	factor, @function
factor:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	facbegsys(%rip), %rax
	movq	-40(%rbp), %rcx
	movl	$24, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movq	facbegsys(%rip), %rdx
	movl	sym(%rip), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	je	.L116
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L104
	movl	$id, %edi
	call	position
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L105
	movl	$11, %edi
	call	error
	jmp	.L106
.L105:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table+12, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L107
	cmpl	$2, %eax
	je	.L108
	testl	%eax, %eax
	jne	.L106
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table+16, %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	gen
	jmp	.L106
.L107:
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movzwl	18(%rax), %eax
	cwtl
	movl	level(%rip), %ecx
	movq	-16(%rbp), %rdx
	movzwl	16(%rdx), %edx
	movswl	%dx, %edx
	subl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$2, %edi
	call	gen
	jmp	.L106
.L108:
	movl	$21, %edi
	call	error
	nop
.L106:
	call	getsym
	jmp	.L110
.L104:
	movl	sym(%rip), %eax
	cmpl	$2, %eax
	jne	.L111
	movl	num(%rip), %eax
	cmpl	$32767, %eax
	jle	.L112
	movl	$25, %edi
	call	error
	movl	$0, num(%rip)
.L112:
	movl	num(%rip), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$0, %edi
	call	gen
	call	getsym
	jmp	.L110
.L111:
	movl	sym(%rip), %eax
	cmpl	$14, %eax
	jne	.L113
	call	getsym
	movl	$0, %esi
	movl	$15, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	expression
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	sym(%rip), %eax
	cmpl	$15, %eax
	jne	.L114
	call	getsym
	jmp	.L110
.L114:
	movl	$22, %edi
	call	error
	jmp	.L110
.L113:
	movl	sym(%rip), %eax
	cmpl	$4, %eax
	jne	.L110
	call	getsym
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	factor
	movl	$1, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
.L110:
	movl	$0, %esi
	movl	$14, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movl	$23, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
.L116:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	factor, .-factor
	.globl	term
	.type	term, @function
term:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, %edx
	movl	$6, %esi
	movl	$5, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	factor
	jmp	.L118
.L120:
	movl	sym(%rip), %eax
	movl	%eax, -12(%rbp)
	call	getsym
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	factor
	cmpl	$5, -12(%rbp)
	jne	.L119
	movl	$4, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L118
.L119:
	movl	$5, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
.L118:
	movl	sym(%rip), %eax
	cmpl	$5, %eax
	je	.L120
	movl	sym(%rip), %eax
	cmpl	$6, %eax
	je	.L120
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	term, .-term
	.globl	expression
	.type	expression, @function
expression:
.LFB19:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, %edx
	movl	$4, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	term
	jmp	.L122
.L124:
	movl	sym(%rip), %eax
	movl	%eax, -12(%rbp)
	call	getsym
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	term
	cmpl	$3, -12(%rbp)
	jne	.L123
	movl	$2, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L122
.L123:
	movl	$3, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
.L122:
	movl	sym(%rip), %eax
	cmpl	$3, %eax
	je	.L124
	movl	sym(%rip), %eax
	cmpl	$4, %eax
	je	.L124
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	expression, .-expression
	.globl	condition
	.type	condition, @function
condition:
.LFB20:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	sym(%rip), %eax
	cmpl	$7, %eax
	jne	.L126
	call	getsym
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	expression
	movl	$6, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L136
.L126:
	movq	relset(%rip), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	expression
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	relset(%rip), %rdx
	movl	sym(%rip), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	jne	.L128
	movl	$20, %edi
	call	error
	jmp	.L136
.L128:
	movl	sym(%rip), %eax
	movl	%eax, -12(%rbp)
	call	getsym
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	expression
	movl	-12(%rbp), %eax
	subl	$8, %eax
	cmpl	$5, %eax
	ja	.L136
	movl	%eax, %eax
	movq	.L130(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L130:
	.quad	.L129
	.quad	.L131
	.quad	.L132
	.quad	.L133
	.quad	.L134
	.quad	.L135
	.text
.L129:
	movl	$7, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L127
.L131:
	movl	$8, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L127
.L132:
	movl	$9, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L127
.L135:
	movl	$12, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L127
.L134:
	movl	$11, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	jmp	.L127
.L133:
	movl	$10, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	nop
.L127:
.L136:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	condition, .-condition
	.globl	statement
	.type	statement, @function
statement:
.LFB21:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L138
	movl	$id, %edi
	call	position
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L139
	movl	$11, %edi
	call	error
	jmp	.L140
.L139:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table+12, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L140
	movl	$12, %edi
	call	error
	movl	$0, -44(%rbp)
.L140:
	call	getsym
	movl	sym(%rip), %eax
	cmpl	$19, %eax
	jne	.L141
	call	getsym
	jmp	.L142
.L141:
	movl	$13, %edi
	call	error
.L142:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	expression
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -44(%rbp)
	je	.L144
	movq	-32(%rbp), %rax
	movzwl	18(%rax), %eax
	cwtl
	movl	level(%rip), %ecx
	movq	-32(%rbp), %rdx
	movzwl	16(%rdx), %edx
	movswl	%dx, %edx
	subl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$3, %edi
	call	gen
	jmp	.L144
.L138:
	movl	sym(%rip), %eax
	cmpl	$26, %eax
	jne	.L145
	call	getsym
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	je	.L146
	movl	$14, %edi
	call	error
	jmp	.L144
.L146:
	movl	$id, %edi
	call	position
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L148
	movl	$11, %edi
	call	error
	jmp	.L149
.L148:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table+12, %rax
	movl	(%rax), %eax
	cmpl	$2, %eax
	jne	.L150
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	18(%rax), %eax
	cwtl
	movl	level(%rip), %ecx
	movq	-24(%rbp), %rdx
	movzwl	16(%rdx), %edx
	movswl	%dx, %edx
	subl	%edx, %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	movl	$4, %edi
	call	gen
	jmp	.L149
.L150:
	movl	$15, %edi
	call	error
.L149:
	call	getsym
	jmp	.L144
.L145:
	movl	sym(%rip), %eax
	cmpl	$22, %eax
	jne	.L151
	call	getsym
	movl	$0, %edx
	movl	$25, %esi
	movl	$23, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	condition
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	sym(%rip), %eax
	cmpl	$23, %eax
	jne	.L152
	call	getsym
	jmp	.L153
.L152:
	movl	$16, %edi
	call	error
.L153:
	movl	cx(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	$0, %edx
	movl	$0, %esi
	movl	$7, %edi
	call	gen
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	statement
	movl	cx(%rip), %ecx
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code+8, %rax
	movl	%ecx, (%rax)
	jmp	.L144
.L151:
	movl	sym(%rip), %eax
	cmpl	$20, %eax
	jne	.L154
	call	getsym
	movl	$0, %edx
	movl	$21, %esi
	movl	$17, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	statement
	jmp	.L155
.L158:
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	jne	.L156
	call	getsym
	jmp	.L157
.L156:
	movl	$10, %edi
	call	error
.L157:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	statement
.L155:
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	je	.L158
	movq	statbegsys(%rip), %rdx
	movl	sym(%rip), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	jne	.L158
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	sym(%rip), %eax
	cmpl	$21, %eax
	jne	.L159
	call	getsym
	jmp	.L144
.L159:
	movl	$17, %edi
	call	error
	jmp	.L144
.L154:
	movl	sym(%rip), %eax
	cmpl	$24, %eax
	jne	.L144
	movl	cx(%rip), %eax
	movl	%eax, -40(%rbp)
	call	getsym
	movl	$0, %esi
	movl	$25, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	condition
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	cx(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	$0, %edx
	movl	$0, %esi
	movl	$7, %edi
	call	gen
	movl	sym(%rip), %eax
	cmpl	$25, %eax
	jne	.L161
	call	getsym
	jmp	.L162
.L161:
	movl	$18, %edi
	call	error
.L162:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	statement
	movl	-40(%rbp), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$6, %edi
	call	gen
	movl	cx(%rip), %ecx
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code+8, %rax
	movl	%ecx, (%rax)
.L144:
	movq	phi(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$19, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	statement, .-statement
	.globl	block
	.type	block, @function
block:
.LFB22:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movl	$3, dx(%rip)
	movl	dx(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	tx(%rip), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$table, %rax
	movq	%rax, -24(%rbp)
	movl	cx(%rip), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 18(%rax)
	movl	$0, %edx
	movl	$0, %esi
	movl	$6, %edi
	call	gen
	movl	level(%rip), %eax
	cmpl	$32, %eax
	jle	.L164
	movl	$32, %edi
	call	error
.L164:
	movl	sym(%rip), %eax
	cmpl	$27, %eax
	jne	.L165
	call	getsym
.L170:
	movl	$0, %eax
	call	constdeclaration
	jmp	.L166
.L167:
	call	getsym
	movl	$0, %eax
	call	constdeclaration
.L166:
	movl	sym(%rip), %eax
	cmpl	$16, %eax
	je	.L167
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	jne	.L168
	call	getsym
	jmp	.L169
.L168:
	movl	$5, %edi
	call	error
.L169:
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	je	.L170
.L165:
	movl	sym(%rip), %eax
	cmpl	$28, %eax
	jne	.L171
	call	getsym
.L176:
	call	vardeclaration
	jmp	.L172
.L173:
	call	getsym
	call	vardeclaration
.L172:
	movl	sym(%rip), %eax
	cmpl	$16, %eax
	je	.L173
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	jne	.L174
	call	getsym
	jmp	.L175
.L174:
	movl	$5, %edi
	call	error
.L175:
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	je	.L176
.L171:
	movl	dx(%rip), %eax
	movl	%eax, -36(%rbp)
	jmp	.L177
.L183:
	call	getsym
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L178
	movl	$2, %edi
	call	enter
	call	getsym
	jmp	.L179
.L178:
	movl	$4, %edi
	call	error
.L179:
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	jne	.L180
	call	getsym
	jmp	.L181
.L180:
	movl	$5, %edi
	call	error
.L181:
	movl	level(%rip), %eax
	addl	$1, %eax
	movl	%eax, level(%rip)
	movl	tx(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	$0, %esi
	movl	$17, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	block
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	-32(%rbp), %eax
	movl	%eax, tx(%rip)
	movl	level(%rip), %eax
	subl	$1, %eax
	movl	%eax, level(%rip)
	movl	sym(%rip), %eax
	cmpl	$17, %eax
	jne	.L182
	call	getsym
	movl	$0, %edx
	movl	$29, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	statbegsys(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-56(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	jmp	.L177
.L182:
	movl	$5, %edi
	call	error
.L177:
	movl	sym(%rip), %eax
	cmpl	$29, %eax
	je	.L183
	movl	-36(%rbp), %eax
	movl	%eax, dx(%rip)
	movl	$0, %edx
	movl	$27, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	statbegsys(%rip), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	declbegsys(%rip), %rcx
	movq	-8(%rbp), %rax
	movl	$7, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	declbegsys(%rip), %rdx
	movl	sym(%rip), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	inset
	testl	%eax, %eax
	jne	.L164
	movq	-24(%rbp), %rax
	movzwl	18(%rax), %eax
	cwtl
	movl	cx(%rip), %ecx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code+8, %rax
	movl	%ecx, (%rax)
	movl	cx(%rip), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 18(%rax)
	movl	cx(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	movl	$0, %esi
	movl	$5, %edi
	call	gen
	movl	$0, %edx
	movl	$21, %esi
	movl	$17, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	statement
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	$0, %edx
	movl	$0, %esi
	movl	$1, %edi
	call	gen
	movq	phi(%rip), %rcx
	movq	-56(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	test
	movl	cx(%rip), %edx
	movl	-28(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	listcode
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	block, .-block
	.globl	base
	.type	base, @function
base:
.LFB23:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L185
.L186:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
.L185:
	movl	-32(%rbp), %eax
	leal	-1(%rax), %edx
	movl	%edx, -32(%rbp)
	testl	%eax, %eax
	jne	.L186
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.size	base, .-base
	.section	.rodata
.LC54:
	.string	"Begin executing PL/0 program."
	.align 8
.LC55:
	.string	"Runtime Error: Divided by zero.\n"
.LC56:
	.string	"Program terminated.\n"
.LC57:
	.string	"%d\n"
.LC58:
	.string	"End executing PL/0 program."
	.text
	.globl	interpret
	.type	interpret, @function
interpret:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$4056, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$.LC54, %edi
	call	puts
	movl	$0, -4060(%rbp)
	movl	$1, -4052(%rbp)
	movl	$3, -4056(%rbp)
	movl	$0, -4020(%rbp)
	movl	-4020(%rbp), %eax
	movl	%eax, -4024(%rbp)
	movl	-4024(%rbp), %eax
	movl	%eax, -4028(%rbp)
.L216:
	movl	-4060(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -4060(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	$code, %rax
	movq	(%rax), %rdx
	movq	%rdx, -4048(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -4040(%rbp)
	movl	-4048(%rbp), %eax
	cmpl	$7, %eax
	ja	.L189
	movl	%eax, %eax
	movq	.L191(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L191:
	.quad	.L190
	.quad	.L192
	.quad	.L193
	.quad	.L194
	.quad	.L195
	.quad	.L196
	.quad	.L197
	.quad	.L198
	.text
.L190:
	addl	$1, -4056(%rbp)
	movl	-4040(%rbp), %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L189
.L192:
	movl	-4040(%rbp), %eax
	cmpl	$12, %eax
	ja	.L218
	movl	%eax, %eax
	movq	.L201(,%rax,8), %rax
	jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L201:
	.quad	.L200
	.quad	.L202
	.quad	.L203
	.quad	.L204
	.quad	.L205
	.quad	.L206
	.quad	.L207
	.quad	.L208
	.quad	.L209
	.quad	.L210
	.quad	.L211
	.quad	.L212
	.quad	.L213
	.text
.L200:
	movl	-4052(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4056(%rbp)
	movl	-4056(%rbp), %eax
	addl	$3, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	movl	%eax, -4060(%rbp)
	movl	-4056(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	movl	%eax, -4052(%rbp)
	jmp	.L199
.L202:
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	negl	%eax
	movl	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L203:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	addl	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L204:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L205:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	imull	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L206:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L214
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$32, %edx
	movl	$1, %esi
	movl	$.LC55, %edi
	call	fwrite
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$20, %edx
	movl	$1, %esi
	movl	$.LC56, %edi
	call	fwrite
	jmp	.L189
.L214:
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	movl	-4056(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	movl	-4032(%rbp,%rdx,4), %ebx
	cltd
	idivl	%ebx
	movl	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L207:
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cltd
	shrl	$31, %edx
	addl	%edx, %eax
	andl	$1, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L208:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	sete	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L209:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	setne	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
.L210:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	setl	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L213:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	setge	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
.L212:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	setg	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L199
.L211:
	subl	$1, -4056(%rbp)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	setle	%al
	movzbl	%al, %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L218
.L199:
	jmp	.L218
.L193:
	addl	$1, -4056(%rbp)
	movl	-4044(%rbp), %edx
	movl	-4052(%rbp), %ecx
	leaq	-4032(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	base
	movl	%eax, %edx
	movl	-4040(%rbp), %eax
	addl	%edx, %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movl	-4056(%rbp), %eax
	cltq
	movl	%edx, -4032(%rbp,%rax,4)
	jmp	.L189
.L194:
	movl	-4044(%rbp), %edx
	movl	-4052(%rbp), %ecx
	leaq	-4032(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	base
	movl	%eax, %edx
	movl	-4040(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %edx
	movslq	%ecx, %rax
	movl	%edx, -4032(%rbp,%rax,4)
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC57, %edi
	movl	$0, %eax
	call	printf
	subl	$1, -4056(%rbp)
	jmp	.L189
.L195:
	movl	-4056(%rbp), %eax
	leal	1(%rax), %ebx
	movl	-4044(%rbp), %edx
	movl	-4052(%rbp), %ecx
	leaq	-4032(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	base
	movl	%eax, %edx
	movslq	%ebx, %rax
	movl	%edx, -4032(%rbp,%rax,4)
	movl	-4056(%rbp), %eax
	addl	$2, %eax
	cltq
	movl	-4052(%rbp), %edx
	movl	%edx, -4032(%rbp,%rax,4)
	movl	-4056(%rbp), %eax
	addl	$3, %eax
	cltq
	movl	-4060(%rbp), %edx
	movl	%edx, -4032(%rbp,%rax,4)
	movl	-4056(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4052(%rbp)
	movl	-4040(%rbp), %eax
	movl	%eax, -4060(%rbp)
	jmp	.L189
.L196:
	movl	-4040(%rbp), %eax
	addl	%eax, -4056(%rbp)
	jmp	.L189
.L197:
	movl	-4040(%rbp), %eax
	movl	%eax, -4060(%rbp)
	jmp	.L189
.L198:
	movl	-4056(%rbp), %eax
	cltq
	movl	-4032(%rbp,%rax,4), %eax
	testl	%eax, %eax
	jne	.L215
	movl	-4040(%rbp), %eax
	movl	%eax, -4060(%rbp)
.L215:
	subl	$1, -4056(%rbp)
	jmp	.L189
.L218:
	nop
.L189:
	cmpl	$0, -4060(%rbp)
	jne	.L216
	movl	$.LC58, %edi
	call	puts
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L217
	call	__stack_chk_fail
.L217:
	addq	$4056, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.size	interpret, .-interpret
	.section	.rodata
	.align 8
.LC59:
	.string	"Please input source file name: "
.LC60:
	.string	"%s"
.LC61:
	.string	"r"
.LC62:
	.string	"File %s can't be opened.\n"
.LC63:
	.string	"w"
.LC64:
	.string	"hbin.txt"
	.align 8
.LC65:
	.string	"There are %d error(s) in PL/0 program.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB25:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$.LC59, %edi
	movl	$0, %eax
	call	printf
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC60, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	-96(%rbp), %rax
	movl	$.LC61, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, infile(%rip)
	movq	infile(%rip), %rax
	testq	%rax, %rax
	jne	.L220
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC62, %edi
	movl	$0, %eax
	call	printf
	movl	$1, %edi
	call	exit
.L220:
	movl	$0, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, phi(%rip)
	subq	$8, %rsp
	pushq	$0
	movl	$13, %r9d
	movl	$12, %r8d
	movl	$11, %ecx
	movl	$10, %edx
	movl	$9, %esi
	movl	$8, %edi
	movl	$0, %eax
	call	createset
	addq	$16, %rsp
	movq	%rax, relset(%rip)
	movl	$0, %ecx
	movl	$29, %edx
	movl	$28, %esi
	movl	$27, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, declbegsys(%rip)
	movl	$0, %r8d
	movl	$24, %ecx
	movl	$22, %edx
	movl	$26, %esi
	movl	$20, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, statbegsys(%rip)
	movl	$0, %r8d
	movl	$4, %ecx
	movl	$14, %edx
	movl	$2, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, facbegsys(%rip)
	movl	$0, ll(%rip)
	movl	ll(%rip), %eax
	movl	%eax, cx(%rip)
	movl	cx(%rip), %eax
	movl	%eax, cc(%rip)
	movl	cc(%rip), %eax
	movl	%eax, err(%rip)
	movb	$32, ch(%rip)
	movl	$10, kk(%rip)
	call	getsym
	movl	$0, %esi
	movl	$18, %edi
	movl	$0, %eax
	call	createset
	movq	%rax, -128(%rbp)
	movq	statbegsys(%rip), %rdx
	movq	declbegsys(%rip), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdx
	movq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	uniteset
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	block
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	phi(%rip), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	relset(%rip), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	declbegsys(%rip), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	statbegsys(%rip), %rax
	movq	%rax, %rdi
	call	destroyset
	movq	facbegsys(%rip), %rax
	movq	%rax, %rdi
	call	destroyset
	movl	sym(%rip), %eax
	cmpl	$18, %eax
	je	.L221
	movl	$9, %edi
	call	error
.L221:
	movl	err(%rip), %eax
	testl	%eax, %eax
	jne	.L222
	movl	$.LC63, %esi
	movl	$.LC64, %edi
	call	fopen
	movq	%rax, -104(%rbp)
	movl	$0, -132(%rbp)
	jmp	.L223
.L224:
	movl	-132(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	code(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$12, %esi
	call	fwrite
	addl	$1, -132(%rbp)
.L223:
	movl	cx(%rip), %eax
	cmpl	%eax, -132(%rbp)
	jl	.L224
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	fclose
.L222:
	movl	err(%rip), %eax
	testl	%eax, %eax
	jne	.L225
	movl	$0, %eax
	call	interpret
	jmp	.L226
.L225:
	movl	err(%rip), %eax
	movl	%eax, %esi
	movl	$.LC65, %edi
	movl	$0, %eax
	call	printf
.L226:
	movl	cx(%rip), %eax
	movl	%eax, %esi
	movl	$0, %edi
	call	listcode
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L227
	call	__stack_chk_fail
.L227:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
